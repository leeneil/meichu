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
  
end
