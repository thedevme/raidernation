class Schedule < ActiveRecord::Base
  attr_accessible :clock, :date, :date_time, :date_time_est, :day_of_week, :game_key, :game_played_at, :game_score, :game_tv, :home_team_abbr, :home_team_id, :home_team_large_helmet, :home_team_name, :home_team_point_ot, :home_team_point_q1, :home_team_point_q2, :home_team_point_q3, :home_team_point_q4, :home_team_point_total, :home_team_short_name, :home_team_small_helmet, :is_current_or_next_game, :is_tie, :month_of_year, :nfl_type, :opponent_team_name, :opponent_team_short_name, :outcome, :phase, :post_game_link, :pre_game_link, :score, :status, :time, :title, :type, :visitor_team_abbr, :visitor_team_id, :visitor_team_large_helmet, :visitor_team_name, :visitor_team_point_ot, :visitor_team_point_q1, :visitor_team_point_q2, :visitor_team_point_q3, :visitor_team_point_q4, :visitor_team_point_total, :visitor_team_short_name, :visitor_team_small_helmet, :week, :winner_team_id
end
