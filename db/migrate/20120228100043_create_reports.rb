class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :game_id
      t.integer :set
      t.integer :nthu
      t.integer :nctu
      t.string  :remark
      t.integer :user_id
      t.timestamps
    end
  end
end
