# -*- coding: utf-8 -*-
class ReportsController < ApplicationController
  before_filter :authenticate, :except => [:live, :all]
  def index
    @reports = Report.all(:order=>"id DESC")
    @live_games = Game.all(:order=>"date, position")
  end
  def new
    @live_games = Game.all(:order=>"date, position")
    @report = Report.new(params[:report])
    if request.post? and @report.save
      redirect_to(:action=>:index)
    end
  end
  def live_game
    @live_games = Game.live

  end
    
  def live_new
    @current = Game.find(params[:id])
    @live_games = Game.live
    @previous = Report.last
    @current_reports = @current.reports
    #@reports = Report.find(:all, :limit=>10, :conditions=>"game_id = #{@current.id}")
    @report = Report.new(params[:report])
    @report.game_id = params[:id]
    if request.post? and @report.save
      redirect_to(:action=>:live_new,:id=>@current.id)
    end
  end
  def live
    
    #@all_reports = Report.all(:group=>"game_id", :order=>"updated_at DESC")
    @live_games = Game.all(:order=>"date, position")
    @game = Game.find(params[:id])
    @page_title = @game.title + '文字賽況'
    @reports = @game.reports
  end
  def all
    @reports = Report.all(:order=>"id DESC")
    @live_games = Game.all(:order=>"date, position")
  end
  def edit
    @live_games = Game.all(:order=>"date, position")
    @report = Report.find(params[:id])
    if request.post? and @report.update_attributes(params[:report])
      redirect_to(:action=>"index")
    end
  end
  
  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to(:action=>"index")
  end
  
end
