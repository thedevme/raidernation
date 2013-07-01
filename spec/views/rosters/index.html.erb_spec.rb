require 'spec_helper'

describe "rosters/index" do
  before(:each) do
    assign(:rosters, [
      stub_model(Roster,
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
      ),
      stub_model(Roster,
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
      )
    ])
  end

  it "renders a list of rosters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Roster Position".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Experience".to_s, :count => 2
    assert_select "tr>td", :text => "College".to_s, :count => 2
    assert_select "tr>td", :text => "Player Image".to_s, :count => 2
    assert_select "tr>td", :text => "Player Full Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
