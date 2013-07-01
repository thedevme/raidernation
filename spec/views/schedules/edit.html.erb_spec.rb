require 'spec_helper'

describe "schedules/edit" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
      :game_tv => "MyString",
      :game_score => "MyString",
      :game_key => "MyString",
      :status => "MyString",
      :week => 1,
      :date => "MyString",
      :day_of_week => "MyString",
      :month_of_year => "MyString",
      :time => "MyString",
      :type => "",
      :nfl_type => "MyString",
      :is_current_or_next_game => false,
      :title => "MyString",
      :home_team_name => "MyString",
      :home_team_short_name => "MyString",
      :home_team_abbr => "MyString",
      :home_team_id => "MyString",
      :home_team_small_helmet => "MyString",
      :home_team_large_helmet => "MyString",
      :visitor_team_name => "MyString",
      :visitor_team_short_name => "MyString",
      :visitor_team_abbr => "MyString",
      :visitor_team_id => "MyString",
      :visitor_team_small_helmet => "MyString",
      :visitor_team_large_helmet => "MyString",
      :opponent_team_name => "MyString",
      :opponent_team_short_name => "MyString",
      :game_played_at => "MyString",
      :outcome => "MyString",
      :visitor_team_point_total => "MyString",
      :visitor_team_point_q1 => "MyString",
      :visitor_team_point_q2 => "MyString",
      :visitor_team_point_q3 => "MyString",
      :visitor_team_point_q4 => "MyString",
      :visitor_team_point_ot => "MyString",
      :home_team_point_total => "MyString",
      :home_team_point_q1 => "MyString",
      :home_team_point_q2 => "MyString",
      :home_team_point_q3 => "MyString",
      :home_team_point_q4 => "MyString",
      :home_team_point_ot => "MyString",
      :score => "MyString",
      :phase => "MyString",
      :clock => "MyString",
      :is_tie => "MyString",
      :winner_team_id => "MyString",
      :pre_game_link => "MyString",
      :post_game_link => "MyString"
    ))
  end

  it "renders the edit schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedules_path(@schedule), :method => "post" do
      assert_select "input#schedule_game_tv", :name => "schedule[game_tv]"
      assert_select "input#schedule_game_score", :name => "schedule[game_score]"
      assert_select "input#schedule_game_key", :name => "schedule[game_key]"
      assert_select "input#schedule_status", :name => "schedule[status]"
      assert_select "input#schedule_week", :name => "schedule[week]"
      assert_select "input#schedule_date", :name => "schedule[date]"
      assert_select "input#schedule_day_of_week", :name => "schedule[day_of_week]"
      assert_select "input#schedule_month_of_year", :name => "schedule[month_of_year]"
      assert_select "input#schedule_time", :name => "schedule[time]"
      assert_select "input#schedule_type", :name => "schedule[type]"
      assert_select "input#schedule_nfl_type", :name => "schedule[nfl_type]"
      assert_select "input#schedule_is_current_or_next_game", :name => "schedule[is_current_or_next_game]"
      assert_select "input#schedule_title", :name => "schedule[title]"
      assert_select "input#schedule_home_team_name", :name => "schedule[home_team_name]"
      assert_select "input#schedule_home_team_short_name", :name => "schedule[home_team_short_name]"
      assert_select "input#schedule_home_team_abbr", :name => "schedule[home_team_abbr]"
      assert_select "input#schedule_home_team_id", :name => "schedule[home_team_id]"
      assert_select "input#schedule_home_team_small_helmet", :name => "schedule[home_team_small_helmet]"
      assert_select "input#schedule_home_team_large_helmet", :name => "schedule[home_team_large_helmet]"
      assert_select "input#schedule_visitor_team_name", :name => "schedule[visitor_team_name]"
      assert_select "input#schedule_visitor_team_short_name", :name => "schedule[visitor_team_short_name]"
      assert_select "input#schedule_visitor_team_abbr", :name => "schedule[visitor_team_abbr]"
      assert_select "input#schedule_visitor_team_id", :name => "schedule[visitor_team_id]"
      assert_select "input#schedule_visitor_team_small_helmet", :name => "schedule[visitor_team_small_helmet]"
      assert_select "input#schedule_visitor_team_large_helmet", :name => "schedule[visitor_team_large_helmet]"
      assert_select "input#schedule_opponent_team_name", :name => "schedule[opponent_team_name]"
      assert_select "input#schedule_opponent_team_short_name", :name => "schedule[opponent_team_short_name]"
      assert_select "input#schedule_game_played_at", :name => "schedule[game_played_at]"
      assert_select "input#schedule_outcome", :name => "schedule[outcome]"
      assert_select "input#schedule_visitor_team_point_total", :name => "schedule[visitor_team_point_total]"
      assert_select "input#schedule_visitor_team_point_q1", :name => "schedule[visitor_team_point_q1]"
      assert_select "input#schedule_visitor_team_point_q2", :name => "schedule[visitor_team_point_q2]"
      assert_select "input#schedule_visitor_team_point_q3", :name => "schedule[visitor_team_point_q3]"
      assert_select "input#schedule_visitor_team_point_q4", :name => "schedule[visitor_team_point_q4]"
      assert_select "input#schedule_visitor_team_point_ot", :name => "schedule[visitor_team_point_ot]"
      assert_select "input#schedule_home_team_point_total", :name => "schedule[home_team_point_total]"
      assert_select "input#schedule_home_team_point_q1", :name => "schedule[home_team_point_q1]"
      assert_select "input#schedule_home_team_point_q2", :name => "schedule[home_team_point_q2]"
      assert_select "input#schedule_home_team_point_q3", :name => "schedule[home_team_point_q3]"
      assert_select "input#schedule_home_team_point_q4", :name => "schedule[home_team_point_q4]"
      assert_select "input#schedule_home_team_point_ot", :name => "schedule[home_team_point_ot]"
      assert_select "input#schedule_score", :name => "schedule[score]"
      assert_select "input#schedule_phase", :name => "schedule[phase]"
      assert_select "input#schedule_clock", :name => "schedule[clock]"
      assert_select "input#schedule_is_tie", :name => "schedule[is_tie]"
      assert_select "input#schedule_winner_team_id", :name => "schedule[winner_team_id]"
      assert_select "input#schedule_pre_game_link", :name => "schedule[pre_game_link]"
      assert_select "input#schedule_post_game_link", :name => "schedule[post_game_link]"
    end
  end
end
