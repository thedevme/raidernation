require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :player_name => "Player Name",
        :player_no => 1,
        :player_pos => "Player Pos",
        :player_height => "Player Height",
        :player_weight => 2,
        :player_age => 3,
        :player_exp => "Player Exp",
        :player_college => "Player College",
        :player_stat_type => "Player Stat Type",
        :player_pos_depth => 4,
        :player_depthchart_pos => "Player Depthchart Pos",
        :player_last_name => "Player Last Name",
        :player_first_name => "Player First Name"
      ),
      stub_model(Player,
        :player_name => "Player Name",
        :player_no => 1,
        :player_pos => "Player Pos",
        :player_height => "Player Height",
        :player_weight => 2,
        :player_age => 3,
        :player_exp => "Player Exp",
        :player_college => "Player College",
        :player_stat_type => "Player Stat Type",
        :player_pos_depth => 4,
        :player_depthchart_pos => "Player Depthchart Pos",
        :player_last_name => "Player Last Name",
        :player_first_name => "Player First Name"
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Player Pos".to_s, :count => 2
    assert_select "tr>td", :text => "Player Height".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Player Exp".to_s, :count => 2
    assert_select "tr>td", :text => "Player College".to_s, :count => 2
    assert_select "tr>td", :text => "Player Stat Type".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Player Depthchart Pos".to_s, :count => 2
    assert_select "tr>td", :text => "Player Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Player First Name".to_s, :count => 2
  end
end
