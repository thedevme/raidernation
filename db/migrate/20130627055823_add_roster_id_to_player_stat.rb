class AddRosterIdToPlayerStat < ActiveRecord::Migration
  def change
    add_column :player_stats, :roster_id, :string
  end
end
