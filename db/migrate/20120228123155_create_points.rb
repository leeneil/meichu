class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :game_id
      t.float   :nthu
      t.float   :nctu
      t.string  :remark
      t.timestamps
    end
  end
end
