class AddPlayerImageToCollegePlayer < ActiveRecord::Migration
  def change
    add_column :college_players, :player_image, :string
  end
end
