class CreatePredictions < ActiveRecord::Migration[5.0]
  def change
    create_table :predictions do |t|
      t.references :user, foreign_key: true
      t.references :bowl, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
