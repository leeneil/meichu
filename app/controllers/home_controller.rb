# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    @page_title = '首頁'
    @statuses = Status.all
    #@current_statuses = Game.all(:group=>"status_id")
    #@coming_games = Game.coming
  end
  def list
    @statuses = Status.all
    case params[:id] 
      when 'championship'
        @games = Game.find(:all, :conditions=>"game_type_id = 1", :order=>"date, position")
      when 'exhibition'
        @games = Game.find(:all, :conditions=>"game_type_id = 2", :order=>"date, position")
      when 'xd'
        @games = Game.find(:all, :conditions=>"game_type_id = 3", :order=>"date, position")  
      else
      redirect_to(:controller=>"home")
    end
  end
end
