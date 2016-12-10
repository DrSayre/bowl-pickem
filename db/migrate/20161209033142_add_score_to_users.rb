class AddScoreToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :score, :integer, default: 0
    add_column :users, :correct, :integer, default: 0
    add_column :users, :wrong, :integer, default: 0
  end
end
