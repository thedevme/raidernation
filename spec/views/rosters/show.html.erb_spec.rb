require 'spec_helper'

describe "rosters/show" do
  before(:each) do
    @roster = assign(:roster, stub_model(Roster,
      :full_name => "Full Name",
      :first_name => "First Name",
      :last_name => "Last Name",
      :jersey => 1,
      :roster_position => "Roster Position",
      :height => "Height",
      :weight => 2,
      :age => 3,
      :experience => "Experience",
      :college => "College",
      :player_image => "Player Image",
      :player_full_image => "Player Full Image",
      :latest_news => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/1/)
    rendered.should match(/Roster Position/)
    rendered.should match(/Height/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Experience/)
    rendered.should match(/College/)
    rendered.should match(/Player Image/)
    rendered.should match(/Player Full Image/)
    rendered.should match(/MyText/)
  end
end
