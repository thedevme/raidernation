class Position < ActiveRecord::Base
  attr_accessible :player_position, :roster_id, :depth_position, :short_id
  belongs_to :roster
  
  validates :roster_id, presence: true
end
