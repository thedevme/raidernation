require "spec_helper"

describe PlayerStatsController do
  describe "routing" do

    it "routes to #index" do
      get("/player_stats").should route_to("player_stats#index")
    end

    it "routes to #new" do
      get("/player_stats/new").should route_to("player_stats#new")
    end

    it "routes to #show" do
      get("/player_stats/1").should route_to("player_stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/player_stats/1/edit").should route_to("player_stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/player_stats").should route_to("player_stats#create")
    end

    it "routes to #update" do
      put("/player_stats/1").should route_to("player_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/player_stats/1").should route_to("player_stats#destroy", :id => "1")
    end

  end
end
