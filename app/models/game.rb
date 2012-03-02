class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :home
  belongs_to :status
  has_one :point
  has_many  :reports, :order=>"updated_at DESC"
  def self.coming
    find(:all, :conditions=>"status_id=3")
  end
  def self.live
    find(:all, :conditions=>"status_id<=3")
  end
  def self.champ
    find(:all, :conditions=>"game_type_id=1 and status_id=3")
  end
end
