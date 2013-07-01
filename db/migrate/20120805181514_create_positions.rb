class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
    	
      t.string :player_position
      t.integer :roster_id
      t.integer	:depth_position

      t.timestamps
    end
    add_index :positions, [:roster_id, :created_at]
  end
end
