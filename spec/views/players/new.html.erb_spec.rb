require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :player_name => "MyString",
      :player_no => 1,
      :player_pos => "MyString",
      :player_height => "MyString",
      :player_weight => 1,
      :player_age => 1,
      :player_exp => "MyString",
      :player_college => "MyString",
      :player_stat_type => "MyString",
      :player_pos_depth => 1,
      :player_depthchart_pos => "MyString",
      :player_last_name => "MyString",
      :player_first_name => "MyString"
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path, :method => "post" do
      assert_select "input#player_player_name", :name => "player[player_name]"
      assert_select "input#player_player_no", :name => "player[player_no]"
      assert_select "input#player_player_pos", :name => "player[player_pos]"
      assert_select "input#player_player_height", :name => "player[player_height]"
      assert_select "input#player_player_weight", :name => "player[player_weight]"
      assert_select "input#player_player_age", :name => "player[player_age]"
      assert_select "input#player_player_exp", :name => "player[player_exp]"
      assert_select "input#player_player_college", :name => "player[player_college]"
      assert_select "input#player_player_stat_type", :name => "player[player_stat_type]"
      assert_select "input#player_player_pos_depth", :name => "player[player_pos_depth]"
      assert_select "input#player_player_depthchart_pos", :name => "player[player_depthchart_pos]"
      assert_select "input#player_player_last_name", :name => "player[player_last_name]"
      assert_select "input#player_player_first_name", :name => "player[player_first_name]"
    end
  end
end
