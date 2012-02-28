# -*- coding: utf-8 -*-
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string  :title
      t.integer :game_type_id, :default=>1
      t.integer :status_id, :default=>3
      t.integer :winner, :default=>0
      t.integer :home_id
      t.string  :venue
      t.string  :date
      t.string  :time
      t.string   :set, :default=>"局"
      t.integer :position, :default=>0
      

      t.timestamps
    end
  end
end
