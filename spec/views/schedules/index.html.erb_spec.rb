require 'spec_helper'

describe "schedules/index" do
  before(:each) do
    assign(:schedules, [
      stub_model(Schedule,
        :game_tv => "Game Tv",
        :game_score => "Game Score",
        :game_key => "Game Key",
        :status => "Status",
        :week => 1,
        :date => "Date",
        :day_of_week => "Day Of Week",
        :month_of_year => "Month Of Year",
        :time => "Time",
        :type => "Type",
        :nfl_type => "Nfl Type",
        :is_current_or_next_game => false,
        :title => "Title",
        :home_team_name => "Home Team Name",
        :home_team_short_name => "Home Team Short Name",
        :home_team_abbr => "Home Team Abbr",
        :home_team_id => "Home Team",
        :home_team_small_helmet => "Home Team Small Helmet",
        :home_team_large_helmet => "Home Team Large Helmet",
        :visitor_team_name => "Visitor Team Name",
        :visitor_team_short_name => "Visitor Team Short Name",
        :visitor_team_abbr => "Visitor Team Abbr",
        :visitor_team_id => "Visitor Team",
        :visitor_team_small_helmet => "Visitor Team Small Helmet",
        :visitor_team_large_helmet => "Visitor Team Large Helmet",
        :opponent_team_name => "Opponent Team Name",
        :opponent_team_short_name => "Opponent Team Short Name",
        :game_played_at => "Game Played At",
        :outcome => "Outcome",
        :visitor_team_point_total => "Visitor Team Point Total",
        :visitor_team_point_q1 => "Visitor Team Point Q1",
        :visitor_team_point_q2 => "Visitor Team Point Q2",
        :visitor_team_point_q3 => "Visitor Team Point Q3",
        :visitor_team_point_q4 => "Visitor Team Point Q4",
        :visitor_team_point_ot => "Visitor Team Point Ot",
        :home_team_point_total => "Home Team Point Total",
        :home_team_point_q1 => "Home Team Point Q1",
        :home_team_point_q2 => "Home Team Point Q2",
        :home_team_point_q3 => "Home Team Point Q3",
        :home_team_point_q4 => "Home Team Point Q4",
        :home_team_point_ot => "Home Team Point Ot",
        :score => "Score",
        :phase => "Phase",
        :clock => "Clock",
        :is_tie => "Is Tie",
        :winner_team_id => "Winner Team",
        :pre_game_link => "Pre Game Link",
        :post_game_link => "Post Game Link"
      ),
      stub_model(Schedule,
        :game_tv => "Game Tv",
        :game_score => "Game Score",
        :game_key => "Game Key",
        :status => "Status",
        :week => 1,
        :date => "Date",
        :day_of_week => "Day Of Week",
        :month_of_year => "Month Of Year",
        :time => "Time",
        :type => "Type",
        :nfl_type => "Nfl Type",
        :is_current_or_next_game => false,
        :title => "Title",
        :home_team_name => "Home Team Name",
        :home_team_short_name => "Home Team Short Name",
        :home_team_abbr => "Home Team Abbr",
        :home_team_id => "Home Team",
        :home_team_small_helmet => "Home Team Small Helmet",
        :home_team_large_helmet => "Home Team Large Helmet",
        :visitor_team_name => "Visitor Team Name",
        :visitor_team_short_name => "Visitor Team Short Name",
        :visitor_team_abbr => "Visitor Team Abbr",
        :visitor_team_id => "Visitor Team",
        :visitor_team_small_helmet => "Visitor Team Small Helmet",
        :visitor_team_large_helmet => "Visitor Team Large Helmet",
        :opponent_team_name => "Opponent Team Name",
        :opponent_team_short_name => "Opponent Team Short Name",
        :game_played_at => "Game Played At",
        :outcome => "Outcome",
        :visitor_team_point_total => "Visitor Team Point Total",
        :visitor_team_point_q1 => "Visitor Team Point Q1",
        :visitor_team_point_q2 => "Visitor Team Point Q2",
        :visitor_team_point_q3 => "Visitor Team Point Q3",
        :visitor_team_point_q4 => "Visitor Team Point Q4",
        :visitor_team_point_ot => "Visitor Team Point Ot",
        :home_team_point_total => "Home Team Point Total",
        :home_team_point_q1 => "Home Team Point Q1",
        :home_team_point_q2 => "Home Team Point Q2",
        :home_team_point_q3 => "Home Team Point Q3",
        :home_team_point_q4 => "Home Team Point Q4",
        :home_team_point_ot => "Home Team Point Ot",
        :score => "Score",
        :phase => "Phase",
        :clock => "Clock",
        :is_tie => "Is Tie",
        :winner_team_id => "Winner Team",
        :pre_game_link => "Pre Game Link",
        :post_game_link => "Post Game Link"
      )
    ])
  end

  it "renders a list of schedules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Game Tv".to_s, :count => 2
    assert_select "tr>td", :text => "Game Score".to_s, :count => 2
    assert_select "tr>td", :text => "Game Key".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Day Of Week".to_s, :count => 2
    assert_select "tr>td", :text => "Month Of Year".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Nfl Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Name".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Short Name".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Abbr".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Small Helmet".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Large Helmet".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Name".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Short Name".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Abbr".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Small Helmet".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Large Helmet".to_s, :count => 2
    assert_select "tr>td", :text => "Opponent Team Name".to_s, :count => 2
    assert_select "tr>td", :text => "Opponent Team Short Name".to_s, :count => 2
    assert_select "tr>td", :text => "Game Played At".to_s, :count => 2
    assert_select "tr>td", :text => "Outcome".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Point Total".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Point Q1".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Point Q2".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Point Q3".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Point Q4".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor Team Point Ot".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Point Total".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Point Q1".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Point Q2".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Point Q3".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Point Q4".to_s, :count => 2
    assert_select "tr>td", :text => "Home Team Point Ot".to_s, :count => 2
    assert_select "tr>td", :text => "Score".to_s, :count => 2
    assert_select "tr>td", :text => "Phase".to_s, :count => 2
    assert_select "tr>td", :text => "Clock".to_s, :count => 2
    assert_select "tr>td", :text => "Is Tie".to_s, :count => 2
    assert_select "tr>td", :text => "Winner Team".to_s, :count => 2
    assert_select "tr>td", :text => "Pre Game Link".to_s, :count => 2
    assert_select "tr>td", :text => "Post Game Link".to_s, :count => 2
  end
end
