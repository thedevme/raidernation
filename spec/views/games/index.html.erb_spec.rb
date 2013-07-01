require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :opponent => "Opponent",
        :game_time => "Game Time",
        :game_status => "Game Status",
        :game_location => "Game Location",
        :game_result => "Game Result",
        :game_tv => "Game Tv",
        :game_score => "Game Score",
        :game_link => "Game Link"
      ),
      stub_model(Game,
        :opponent => "Opponent",
        :game_time => "Game Time",
        :game_status => "Game Status",
        :game_location => "Game Location",
        :game_result => "Game Result",
        :game_tv => "Game Tv",
        :game_score => "Game Score",
        :game_link => "Game Link"
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Opponent".to_s, :count => 2
    assert_select "tr>td", :text => "Game Time".to_s, :count => 2
    assert_select "tr>td", :text => "Game Status".to_s, :count => 2
    assert_select "tr>td", :text => "Game Location".to_s, :count => 2
    assert_select "tr>td", :text => "Game Result".to_s, :count => 2
    assert_select "tr>td", :text => "Game Tv".to_s, :count => 2
    assert_select "tr>td", :text => "Game Score".to_s, :count => 2
    assert_select "tr>td", :text => "Game Link".to_s, :count => 2
  end
end
