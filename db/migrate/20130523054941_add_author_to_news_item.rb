class AddAuthorToNewsItem < ActiveRecord::Migration
  def change
    add_column :news_items, :author, :string
  end
end
