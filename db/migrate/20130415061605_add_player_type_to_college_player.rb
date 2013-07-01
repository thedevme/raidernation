class AddPlayerTypeToCollegePlayer < ActiveRecord::Migration
  def change
    add_column :college_players, :player_type, :string
  end
end
