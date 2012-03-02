class ChampionshipController < ApplicationController
  before_filter :authenticate 
  def index
    @points = Point.all(:order=>"updated_at DESC")
    @point = Point.new(params[:point])
    
    @nthu = Point.sum(:nthu)
    @nctu = Point.sum(:nctu)
    
    if request.post? and @point.save
      #@pint = Point.new
      @game = Game.find(@point.game_id)
      @game.status_id = 4
      if @point.nthu > @point.nctu
        @game.winner = 114
      else
        @game.winner = 113
      end
      @game.update_attributes(params[:game])
      redirect_to(:action=>"index")
    end
  end
  def edit
    @points = Point.all(:order=>"updated_at DESC")
    
    @nthu = Point.sum(:nthu)
    @nctu = Point.sum(:nctu)
    @point = Point.find(params[:id])
    if request.post? and @point.update_attributes(params[:point])
      @game = Game.find(@point.game_id)
      if @point.nthu > @point.nctu
        @game.winner = 114
      else
        @game.winner = 113
      end
      @game.update_attributes(params[:game])
      redirect_to(:action=>"index")
    end
  end
  
  def destroy
    @point = Point.find(params[:id])
    @game = @point.game
    @game.status_id = 3
    @game.update_attributes(params[:game])
    @point.destroy
    redirect_to(:action=>"index")
  end
end
