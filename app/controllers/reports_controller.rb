class ReportsController < ApplicationController
  before_filter :authenticate, :except => :live
  def index
    @reports = Report.all(:order=>"id DESC")
  end
  def new
    @report = Report.new(params[:report])
    if request.post? and @report.save
      redirect_to(:action=>:index)
    end
  end
  def live
  end
  
end
