class Roster < ActiveRecord::Base
  attr_accessible :age, :college, :experience, :first_name, :full_name, :height, :jersey, :last_name, :latest_news, :player_full_image, :player_image, :roster_position, :weight, :roster_id, :short_id
  has_many :positions, dependent: :destroy
  has_many :player_stats, dependent: :destroy
end
