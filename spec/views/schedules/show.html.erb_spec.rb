require 'spec_helper'

describe "schedules/show" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Game Tv/)
    rendered.should match(/Game Score/)
    rendered.should match(/Game Key/)
    rendered.should match(/Status/)
    rendered.should match(/1/)
    rendered.should match(/Date/)
    rendered.should match(/Day Of Week/)
    rendered.should match(/Month Of Year/)
    rendered.should match(/Time/)
    rendered.should match(/Type/)
    rendered.should match(/Nfl Type/)
    rendered.should match(/false/)
    rendered.should match(/Title/)
    rendered.should match(/Home Team Name/)
    rendered.should match(/Home Team Short Name/)
    rendered.should match(/Home Team Abbr/)
    rendered.should match(/Home Team/)
    rendered.should match(/Home Team Small Helmet/)
    rendered.should match(/Home Team Large Helmet/)
    rendered.should match(/Visitor Team Name/)
    rendered.should match(/Visitor Team Short Name/)
    rendered.should match(/Visitor Team Abbr/)
    rendered.should match(/Visitor Team/)
    rendered.should match(/Visitor Team Small Helmet/)
    rendered.should match(/Visitor Team Large Helmet/)
    rendered.should match(/Opponent Team Name/)
    rendered.should match(/Opponent Team Short Name/)
    rendered.should match(/Game Played At/)
    rendered.should match(/Outcome/)
    rendered.should match(/Visitor Team Point Total/)
    rendered.should match(/Visitor Team Point Q1/)
    rendered.should match(/Visitor Team Point Q2/)
    rendered.should match(/Visitor Team Point Q3/)
    rendered.should match(/Visitor Team Point Q4/)
    rendered.should match(/Visitor Team Point Ot/)
    rendered.should match(/Home Team Point Total/)
    rendered.should match(/Home Team Point Q1/)
    rendered.should match(/Home Team Point Q2/)
    rendered.should match(/Home Team Point Q3/)
    rendered.should match(/Home Team Point Q4/)
    rendered.should match(/Home Team Point Ot/)
    rendered.should match(/Score/)
    rendered.should match(/Phase/)
    rendered.should match(/Clock/)
    rendered.should match(/Is Tie/)
    rendered.should match(/Winner Team/)
    rendered.should match(/Pre Game Link/)
    rendered.should match(/Post Game Link/)
  end
end
