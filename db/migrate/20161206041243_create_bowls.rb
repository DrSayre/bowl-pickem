class CreateBowls < ActiveRecord::Migration[5.0]
  def change
    create_table :bowls do |t|
      t.string :name
      t.integer :points
      t.date :game_date

      t.timestamps
    end
  end
end
