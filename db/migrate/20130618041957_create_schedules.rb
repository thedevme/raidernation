class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :game_tv
      t.string :game_score
      t.string :game_key
      t.string :status
      t.integer :week
      t.string :date
      t.datetime :date_time
      t.datetime :date_time_est
      t.string :day_of_week
      t.string :month_of_year
      t.string :time
      t.string :type
      t.string :nfl_type
      t.boolean :is_current_or_next_game
      t.string :title
      t.string :home_team_name
      t.string :home_team_short_name
      t.string :home_team_abbr
      t.string :home_team_id
      t.string :home_team_small_helmet
      t.string :home_team_large_helmet
      t.string :visitor_team_name
      t.string :visitor_team_short_name
      t.string :visitor_team_abbr
      t.string :visitor_team_id
      t.string :visitor_team_small_helmet
      t.string :visitor_team_large_helmet
      t.string :opponent_team_name
      t.string :opponent_team_short_name
      t.string :game_played_at
      t.string :outcome
      t.integer :visitor_team_point_total
      t.integer :visitor_team_point_q1
      t.integer :visitor_team_point_q2
      t.integer :visitor_team_point_q3
      t.integer :visitor_team_point_q4
      t.integer :visitor_team_point_ot
      t.integer :home_team_point_total
      t.integer :home_team_point_q1
      t.integer :home_team_point_q2
      t.integer :home_team_point_q3
      t.integer :home_team_point_q4
      t.integer :home_team_point_ot
      t.string :score
      t.string :phase
      t.string :clock
      t.string :is_tie
      t.string :winner_team_id
      t.string :pre_game_link
      t.string :post_game_link
      t.boolean :is_bye
      t.string :game_type

      t.timestamps
    end
  end
end
