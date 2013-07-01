require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Player Name/)
    rendered.should match(/1/)
    rendered.should match(/Player Pos/)
    rendered.should match(/Player Height/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Player Exp/)
    rendered.should match(/Player College/)
    rendered.should match(/Player Stat Type/)
    rendered.should match(/4/)
    rendered.should match(/Player Depthchart Pos/)
    rendered.should match(/Player Last Name/)
    rendered.should match(/Player First Name/)
  end
end
