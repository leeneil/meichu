class SetToString < ActiveRecord::Migration
  def up
    change_column :reports, :set, :string
  end

  def down
    change_column :reports, :set, :integer
  end
end
