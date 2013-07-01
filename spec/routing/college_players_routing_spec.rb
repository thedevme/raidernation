require "spec_helper"

describe CollegePlayersController do
  describe "routing" do

    it "routes to #index" do
      get("/college_players").should route_to("college_players#index")
    end

    it "routes to #new" do
      get("/college_players/new").should route_to("college_players#new")
    end

    it "routes to #show" do
      get("/college_players/1").should route_to("college_players#show", :id => "1")
    end

    it "routes to #edit" do
      get("/college_players/1/edit").should route_to("college_players#edit", :id => "1")
    end

    it "routes to #create" do
      post("/college_players").should route_to("college_players#create")
    end

    it "routes to #update" do
      put("/college_players/1").should route_to("college_players#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/college_players/1").should route_to("college_players#destroy", :id => "1")
    end

  end
end
