class Standing < ActiveRecord::Base
  attr_accessible :abbr, :clinched_playoffs, :conference, :conference_rank, :conference_record, :current_streak, :difference, :display_name, :division, :division_rank, :division_record, :home_record, :losses, :pct, :points_allowed, :points_for, :road_record, :team_id, :ties, :wins, :display_order
end
