class AdminController < ApplicationController
  before_filter :authenticate 
  def index
    @games = Game.all(:order=>"date, position")
  end
  def new
    @game = Game.new(params[:game])
    if request.post? and @game.save
      redirect_to(:action=>:index)
    end
  end
  def edit
    @game = Game.find(params[:id])
    if request.post? and @game.update_attributes(params[:game])
      redirect_to(:action=>:index)
    end
  end
  

  
end
