class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :home
  belongs_to :status
  has_many  :reports
  def self.coming
    find(:all, :conditions=>"status_id=3")
  end
  def self.live
    find(:all, :conditions=>"status_id<=3")
  end
end
