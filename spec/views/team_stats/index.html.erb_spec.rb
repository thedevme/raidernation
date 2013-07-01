require 'spec_helper'

describe "team_stats/index" do
  before(:each) do
    assign(:team_stats, [
      stub_model(TeamStat,
        :ppg_avg => 1.5,
        :ppg_rank => 1,
        :ypg_avg => 1.5,
        :ypg_rank => 2,
        :passing_ypg_avg => 1.5,
        :passing_ypg_rank => 3,
        :rushing_ypg_avg => 1.5,
        :rushing_ypg_rank => 4,
        :pts_apg_avg => 1.5,
        :pts_apg_rank => 5,
        :yds_apg_avg => 1.5,
        :yds_apg_rank => 6,
        :pass_yds_apg_avg => 1.5,
        :pass_yds_apg_rank => 7,
        :rush_yds_apg_avg => 1.5,
        :rush_yds_apg_rank => 8
      ),
      stub_model(TeamStat,
        :ppg_avg => 1.5,
        :ppg_rank => 1,
        :ypg_avg => 1.5,
        :ypg_rank => 2,
        :passing_ypg_avg => 1.5,
        :passing_ypg_rank => 3,
        :rushing_ypg_avg => 1.5,
        :rushing_ypg_rank => 4,
        :pts_apg_avg => 1.5,
        :pts_apg_rank => 5,
        :yds_apg_avg => 1.5,
        :yds_apg_rank => 6,
        :pass_yds_apg_avg => 1.5,
        :pass_yds_apg_rank => 7,
        :rush_yds_apg_avg => 1.5,
        :rush_yds_apg_rank => 8
      )
    ])
  end

  it "renders a list of team_stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
