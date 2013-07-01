class Team < ActiveRecord::Base
  attr_accessible :conf_record, :current_streak, :division_record, :home_record, :losses, :point_diff, :points_allowed, :points_for, :road_record, :division, :division_id, :name, :ties, :win_pct, :wins
end
