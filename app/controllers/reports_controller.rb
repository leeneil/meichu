class ReportsController < ApplicationController
  before_filter :authenticate, :except => :live
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
  def live
    #@all_reports = Report.all(:group=>"game_id", :order=>"updated_at DESC")
    @live_games = Game.all(:order=>"date, position")
    @game = Game.find(params[:id])
    @reports = @game.reports
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
