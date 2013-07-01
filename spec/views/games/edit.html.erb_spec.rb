require 'spec_helper'

describe "games/edit" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :opponent => "MyString",
      :game_time => "MyString",
      :game_status => "MyString",
      :game_location => "MyString",
      :game_result => "MyString",
      :game_tv => "MyString",
      :game_score => "MyString",
      :game_link => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "input#game_opponent", :name => "game[opponent]"
      assert_select "input#game_game_time", :name => "game[game_time]"
      assert_select "input#game_game_status", :name => "game[game_status]"
      assert_select "input#game_game_location", :name => "game[game_location]"
      assert_select "input#game_game_result", :name => "game[game_result]"
      assert_select "input#game_game_tv", :name => "game[game_tv]"
      assert_select "input#game_game_score", :name => "game[game_score]"
      assert_select "input#game_game_link", :name => "game[game_link]"
    end
  end
end
