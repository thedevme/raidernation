class CreateCollegePlayers < ActiveRecord::Migration
  def change
    create_table :college_players do |t|
      t.string :full_name
      t.string :position
      t.string :college
      t.string :height
      t.string :arm_length
      t.string :weight
      t.string :hands
      t.string :comparison
      t.string :strengths
      t.string :weakness
      t.string :forty_dash
      t.string :vert_jump
      t.string :broad_jump
      t.string :three_yd_cone
      t.string :twenty_yd_shuttle
      t.string :sixty_yd_shuttle
      t.string :draft_round
      t.string :bench
      t.string :draft_pick
      t.string :overview
      t.string :espn_overall_rating
      t.string :cbs_overall_rating
      t.string :espn_position_rating
      t.string :cbs_position_rating
      t.string :first_name
      t.string :last_name
      t.string :overall_draft_position

      t.timestamps
    end
  end
end
