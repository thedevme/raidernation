require "spec_helper"

describe TeamStatsController do
  describe "routing" do

    it "routes to #index" do
      get("/team_stats").should route_to("team_stats#index")
    end

    it "routes to #new" do
      get("/team_stats/new").should route_to("team_stats#new")
    end

    it "routes to #show" do
      get("/team_stats/1").should route_to("team_stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_stats/1/edit").should route_to("team_stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_stats").should route_to("team_stats#create")
    end

    it "routes to #update" do
      put("/team_stats/1").should route_to("team_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_stats/1").should route_to("team_stats#destroy", :id => "1")
    end

  end
end
