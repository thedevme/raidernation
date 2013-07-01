class AddShortIdToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :short_id, :string
  end
end
