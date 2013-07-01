ActiveAdmin.register Player do

   index do
    column "Player Name", :name
    column :id
    column :pos
    default_actions
  end

end
