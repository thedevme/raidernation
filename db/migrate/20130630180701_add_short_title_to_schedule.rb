class AddShortTitleToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :short_title, :string
  end
end
