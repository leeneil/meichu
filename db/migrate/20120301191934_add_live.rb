class AddLive < ActiveRecord::Migration
  def up
    add_column :games, :live_url, :string
  end

  def down
    remove_column :games, :live_url
  end
end
