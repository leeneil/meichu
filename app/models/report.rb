class Report < ActiveRecord::Base
  belongs_to :game
  def self.lastest(game_id)
    find(:last, :conditions=>"game_id=#{game_id}")
  end
end
