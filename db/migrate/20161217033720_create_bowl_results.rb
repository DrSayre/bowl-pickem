class CreateBowlResults < ActiveRecord::Migration[5.0]
  def change
    create_table :bowl_results do |t|
      t.references :bowl, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
