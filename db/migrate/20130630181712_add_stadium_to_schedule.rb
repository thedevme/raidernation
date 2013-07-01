class AddStadiumToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :stadium, :string
  end
end
