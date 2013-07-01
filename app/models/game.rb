class Game < ActiveRecord::Base
  attr_accessible :game_date, :raider_link, :location, :result, :home_score, :status, :game_time, :tv, :opponent, :ballers_link, :away_score
end
