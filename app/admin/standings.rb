ActiveAdmin.register Standing do

   index do
    column "Team Name", :display_name
    column :abbr
    column :team_id
    column :display_order
    default_actions
  end

end