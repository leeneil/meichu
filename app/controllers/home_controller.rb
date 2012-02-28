# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    @page_title = '首頁'
    @statuses = Status.all
    @current_statuses = Game.all(:group=>"status_id")
    #@coming_games = Game.coming
  end
end
