class CreateTeamStats < ActiveRecord::Migration
  def change
    create_table :team_stats do |t|
      t.float :ppg_avg
      t.integer :ppg_rank
      t.float :ypg_avg
      t.integer :ypg_rank
      t.float :passing_ypg_avg
      t.integer :passing_ypg_rank
      t.float :rushing_ypg_avg
      t.integer :rushing_ypg_rank
      t.float :pts_apg_avg
      t.integer :pts_apg_rank
      t.float :yds_apg_avg
      t.integer :yds_apg_rank
      t.float :pass_yds_apg_avg
      t.integer :pass_yds_apg_rank
      t.float :rush_yds_apg_avg
      t.integer :rush_yds_apg_rank

      t.timestamps
    end
  end
end
