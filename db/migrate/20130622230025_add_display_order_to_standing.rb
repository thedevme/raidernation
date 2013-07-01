class AddDisplayOrderToStanding < ActiveRecord::Migration
  def change
    add_column :standings, :display_order, :integer
  end
end
