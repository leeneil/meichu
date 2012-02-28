class Status < ActiveRecord::Base
  has_many :games, :order=>"updated_at DESC"
end
