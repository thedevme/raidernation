class AddIndexToNewsItemsLink < ActiveRecord::Migration
  def change
  	add_index :news_items, :link, unique: true
  end
end
