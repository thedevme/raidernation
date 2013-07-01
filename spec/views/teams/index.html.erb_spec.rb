require 'spec_helper'

describe "teams/index" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
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
      ),
      stub_model(Team,
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
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Team Division".to_s, :count => 2
    assert_select "tr>td", :text => "Team Name".to_s, :count => 2
    assert_select "tr>td", :text => "Wins".to_s, :count => 2
    assert_select "tr>td", :text => "Losses".to_s, :count => 2
    assert_select "tr>td", :text => "Ties".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Home Record".to_s, :count => 2
    assert_select "tr>td", :text => "Road Record".to_s, :count => 2
    assert_select "tr>td", :text => "Division Record".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Point Difference".to_s, :count => 2
    assert_select "tr>td", :text => "Current Streak".to_s, :count => 2
  end
end
