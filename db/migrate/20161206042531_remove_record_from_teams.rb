class RemoveRecordFromTeams < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :record, :string
    add_column :teams, :team_record, :string
  end
end
