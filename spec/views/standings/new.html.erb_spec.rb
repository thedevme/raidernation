require 'spec_helper'

describe "standings/new" do
  before(:each) do
    assign(:standing, stub_model(Standing,
      :team_id => "MyString",
      :abbr => "MyString",
      :display_name => "MyString",
      :conference => "MyString",
      :division => "MyString",
      :conference_rank => 1,
      :division_rank => 1,
      :wins => 1,
      :losses => 1,
      :ties => 1,
      :pct => 1.5,
      :home_record => "MyString",
      :road_record => "MyString",
      :division_record => "MyString",
      :conference_record => "MyString",
      :points_for => 1,
      :points_allowed => 1,
      :difference => 1,
      :current_streak => "MyString",
      :clinched_playoffs => false
    ).as_new_record)
  end

  it "renders new standing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => standings_path, :method => "post" do
      assert_select "input#standing_team_id", :name => "standing[team_id]"
      assert_select "input#standing_abbr", :name => "standing[abbr]"
      assert_select "input#standing_display_name", :name => "standing[display_name]"
      assert_select "input#standing_conference", :name => "standing[conference]"
      assert_select "input#standing_division", :name => "standing[division]"
      assert_select "input#standing_conference_rank", :name => "standing[conference_rank]"
      assert_select "input#standing_division_rank", :name => "standing[division_rank]"
      assert_select "input#standing_wins", :name => "standing[wins]"
      assert_select "input#standing_losses", :name => "standing[losses]"
      assert_select "input#standing_ties", :name => "standing[ties]"
      assert_select "input#standing_pct", :name => "standing[pct]"
      assert_select "input#standing_home_record", :name => "standing[home_record]"
      assert_select "input#standing_road_record", :name => "standing[road_record]"
      assert_select "input#standing_division_record", :name => "standing[division_record]"
      assert_select "input#standing_conference_record", :name => "standing[conference_record]"
      assert_select "input#standing_points_for", :name => "standing[points_for]"
      assert_select "input#standing_points_allowed", :name => "standing[points_allowed]"
      assert_select "input#standing_difference", :name => "standing[difference]"
      assert_select "input#standing_current_streak", :name => "standing[current_streak]"
      assert_select "input#standing_clinched_playoffs", :name => "standing[clinched_playoffs]"
    end
  end
end
