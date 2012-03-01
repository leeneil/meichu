class Status < ActiveRecord::Base
  has_many :games, :order=>"date, position"
end
