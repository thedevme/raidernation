require 'spec_helper'

describe "teams/show" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :team_division => "Team Division",
      :team_name => "Team Name",
      :wins => "Wins",
      :losses => "Losses",
      :ties => "Ties",
      :win_pct => 1.5,
      :home_record => "Home Record",
      :road_record => "Road Record",
      :division_record => "Division Record",
      :conference => "",
      :points_for => 1,
      :points_allowed => 2,
      :point_difference => "Point Difference",
      :current_streak => "Current Streak"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Team Division/)
    rendered.should match(/Team Name/)
    rendered.should match(/Wins/)
    rendered.should match(/Losses/)
    rendered.should match(/Ties/)
    rendered.should match(/1.5/)
    rendered.should match(/Home Record/)
    rendered.should match(/Road Record/)
    rendered.should match(/Division Record/)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Point Difference/)
    rendered.should match(/Current Streak/)
  end
end
