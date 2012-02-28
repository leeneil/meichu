class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :school
      t.string :facebook
      t.string :google_plus
      t.string :map
      t.string :web
      t.timestamps
    end
  end
end
