class Player < ActiveRecord::Base
  attr_accessible :age, :nickname, :college, :experience, :first_name, :height, :last_name, :name, :jersey, :pos, :weight, :image, :birthday, :news, :last_update, :player_stats, :player_id
  has_many :positions, dependent: :destroy
  has_many :player_stats, dependent: :destroy
end
