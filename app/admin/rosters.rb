ActiveAdmin.register Roster do

   index do
    column "Player Name", :full_name
    column :id
    column :roster_position
    default_actions
  end

end
