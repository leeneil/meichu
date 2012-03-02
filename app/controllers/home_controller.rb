# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    @page_title = '首頁'
    @statuses = Status.all
    #@current_statuses = Game.all(:group=>"status_id")
    #@coming_games = Game.coming
    @nthu = Point.sum(:nthu)
    @nctu = Point.sum(:nctu)
  end
  def list
    @statuses = Status.all
    case params[:id] 
      when 'championship'
        @page_title = '正式賽'
        @games = Game.find(:all, :conditions=>"game_type_id = 1", :order=>"date, position")
      when 'exhibition'
        @page_title = '表演賽'
        @games = Game.find(:all, :conditions=>"game_type_id = 2", :order=>"date, position")
      when 'xd'
        @page_title = '賽外賽'
        @games = Game.find(:all, :conditions=>"game_type_id = 3", :order=>"date, position")  
      else
      redirect_to(:controller=>"home")
    end
  end
end
