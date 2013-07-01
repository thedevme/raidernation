require 'spec_helper'

describe "games/show" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :opponent => "Opponent",
      :game_time => "Game Time",
      :game_status => "Game Status",
      :game_location => "Game Location",
      :game_result => "Game Result",
      :game_tv => "Game Tv",
      :game_score => "Game Score",
      :game_link => "Game Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Opponent/)
    rendered.should match(/Game Time/)
    rendered.should match(/Game Status/)
    rendered.should match(/Game Location/)
    rendered.should match(/Game Result/)
    rendered.should match(/Game Tv/)
    rendered.should match(/Game Score/)
    rendered.should match(/Game Link/)
  end
end
