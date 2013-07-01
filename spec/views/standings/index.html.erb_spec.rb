require 'spec_helper'

describe "standings/index" do
  before(:each) do
    assign(:standings, [
      stub_model(Standing,
        :team_id => "Team",
        :abbr => "Abbr",
        :display_name => "Display Name",
        :conference => "Conference",
        :division => "Division",
        :conference_rank => 1,
        :division_rank => 2,
        :wins => 3,
        :losses => 4,
        :ties => 5,
        :pct => 1.5,
        :home_record => "Home Record",
        :road_record => "Road Record",
        :division_record => "Division Record",
        :conference_record => "Conference Record",
        :points_for => 6,
        :points_allowed => 7,
        :difference => 8,
        :current_streak => "Current Streak",
        :clinched_playoffs => false
      ),
      stub_model(Standing,
        :team_id => "Team",
        :abbr => "Abbr",
        :display_name => "Display Name",
        :conference => "Conference",
        :division => "Division",
        :conference_rank => 1,
        :division_rank => 2,
        :wins => 3,
        :losses => 4,
        :ties => 5,
        :pct => 1.5,
        :home_record => "Home Record",
        :road_record => "Road Record",
        :division_record => "Division Record",
        :conference_record => "Conference Record",
        :points_for => 6,
        :points_allowed => 7,
        :difference => 8,
        :current_streak => "Current Streak",
        :clinched_playoffs => false
      )
    ])
  end

  it "renders a list of standings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => "Abbr".to_s, :count => 2
    assert_select "tr>td", :text => "Display Name".to_s, :count => 2
    assert_select "tr>td", :text => "Conference".to_s, :count => 2
    assert_select "tr>td", :text => "Division".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Home Record".to_s, :count => 2
    assert_select "tr>td", :text => "Road Record".to_s, :count => 2
    assert_select "tr>td", :text => "Division Record".to_s, :count => 2
    assert_select "tr>td", :text => "Conference Record".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Current Streak".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
