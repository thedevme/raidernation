require 'spec_helper'

describe "standings/show" do
  before(:each) do
    @standing = assign(:standing, stub_model(Standing,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Team/)
    rendered.should match(/Abbr/)
    rendered.should match(/Display Name/)
    rendered.should match(/Conference/)
    rendered.should match(/Division/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/1.5/)
    rendered.should match(/Home Record/)
    rendered.should match(/Road Record/)
    rendered.should match(/Division Record/)
    rendered.should match(/Conference Record/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/Current Streak/)
    rendered.should match(/false/)
  end
end
