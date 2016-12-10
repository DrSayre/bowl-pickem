class CreateBowlGames < ActiveRecord::Migration[5.0]
  def change
    create_table :bowl_games do |t|
      t.references :team, foreign_key: true
      t.references :bowl, foreign_key: true

      t.timestamps
    end
  end
end
