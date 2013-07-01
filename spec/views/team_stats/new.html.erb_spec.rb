require 'spec_helper'

describe "team_stats/new" do
  before(:each) do
    assign(:team_stat, stub_model(TeamStat,
      :ppg_avg => 1.5,
      :ppg_rank => 1,
      :ypg_avg => 1.5,
      :ypg_rank => 1,
      :passing_ypg_avg => 1.5,
      :passing_ypg_rank => 1,
      :rushing_ypg_avg => 1.5,
      :rushing_ypg_rank => 1,
      :pts_apg_avg => 1.5,
      :pts_apg_rank => 1,
      :yds_apg_avg => 1.5,
      :yds_apg_rank => 1,
      :pass_yds_apg_avg => 1.5,
      :pass_yds_apg_rank => 1,
      :rush_yds_apg_avg => 1.5,
      :rush_yds_apg_rank => 1
    ).as_new_record)
  end

  it "renders new team_stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => team_stats_path, :method => "post" do
      assert_select "input#team_stat_ppg_avg", :name => "team_stat[ppg_avg]"
      assert_select "input#team_stat_ppg_rank", :name => "team_stat[ppg_rank]"
      assert_select "input#team_stat_ypg_avg", :name => "team_stat[ypg_avg]"
      assert_select "input#team_stat_ypg_rank", :name => "team_stat[ypg_rank]"
      assert_select "input#team_stat_passing_ypg_avg", :name => "team_stat[passing_ypg_avg]"
      assert_select "input#team_stat_passing_ypg_rank", :name => "team_stat[passing_ypg_rank]"
      assert_select "input#team_stat_rushing_ypg_avg", :name => "team_stat[rushing_ypg_avg]"
      assert_select "input#team_stat_rushing_ypg_rank", :name => "team_stat[rushing_ypg_rank]"
      assert_select "input#team_stat_pts_apg_avg", :name => "team_stat[pts_apg_avg]"
      assert_select "input#team_stat_pts_apg_rank", :name => "team_stat[pts_apg_rank]"
      assert_select "input#team_stat_yds_apg_avg", :name => "team_stat[yds_apg_avg]"
      assert_select "input#team_stat_yds_apg_rank", :name => "team_stat[yds_apg_rank]"
      assert_select "input#team_stat_pass_yds_apg_avg", :name => "team_stat[pass_yds_apg_avg]"
      assert_select "input#team_stat_pass_yds_apg_rank", :name => "team_stat[pass_yds_apg_rank]"
      assert_select "input#team_stat_rush_yds_apg_avg", :name => "team_stat[rush_yds_apg_avg]"
      assert_select "input#team_stat_rush_yds_apg_rank", :name => "team_stat[rush_yds_apg_rank]"
    end
  end
end
