class AddContentToNewsItem < ActiveRecord::Migration
  def change
    add_column :news_items, :content, :string
  end
end
