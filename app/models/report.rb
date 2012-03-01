class Report < ActiveRecord::Base
  belongs_to :game
  def self.lastest(game_id)
    find(:last, :conditions=>"game_id=#{game_id}")
  end
  def self.lastest_five(game_id)
    find(:all, :limit=>5, :conditions=>"game_id=#{game_id}", :order=>"id DESC")
  end
end
