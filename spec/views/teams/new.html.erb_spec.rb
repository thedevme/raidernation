require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :team_division => "MyString",
      :team_name => "MyString",
      :wins => "MyString",
      :losses => "MyString",
      :ties => "MyString",
      :win_pct => 1.5,
      :home_record => "MyString",
      :road_record => "MyString",
      :division_record => "MyString",
      :conference => "",
      :points_for => 1,
      :points_allowed => 1,
      :point_difference => "MyString",
      :current_streak => "MyString"
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_team_division", :name => "team[team_division]"
      assert_select "input#team_team_name", :name => "team[team_name]"
      assert_select "input#team_wins", :name => "team[wins]"
      assert_select "input#team_losses", :name => "team[losses]"
      assert_select "input#team_ties", :name => "team[ties]"
      assert_select "input#team_win_pct", :name => "team[win_pct]"
      assert_select "input#team_home_record", :name => "team[home_record]"
      assert_select "input#team_road_record", :name => "team[road_record]"
      assert_select "input#team_division_record", :name => "team[division_record]"
      assert_select "input#team_conference", :name => "team[conference]"
      assert_select "input#team_points_for", :name => "team[points_for]"
      assert_select "input#team_points_allowed", :name => "team[points_allowed]"
      assert_select "input#team_point_difference", :name => "team[point_difference]"
      assert_select "input#team_current_streak", :name => "team[current_streak]"
    end
  end
end
