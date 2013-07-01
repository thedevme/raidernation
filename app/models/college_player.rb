class CollegePlayer < ActiveRecord::Base
  attr_accessible :arm_length, :bench, :broad_jump, :cbs_overall_rating, :cbs_position_rating, :college, :comparison, :draft_pick, :draft_round, :espn_overall_rating, :espn_position_rating, :first_name, :forty_dash, :full_name, :hands, :height, :last_name, :overall_draft_position, :overview, :position, :sixty_yd_shuttle, :strengths, :three_yd_cone, :twenty_yd_shuttle, :vert_jump, :weakness, :weight, :player_image, :player_type
end
