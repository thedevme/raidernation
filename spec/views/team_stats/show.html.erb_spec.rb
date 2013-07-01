require 'spec_helper'

describe "team_stats/show" do
  before(:each) do
    @team_stat = assign(:team_stat, stub_model(TeamStat,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/1.5/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
    rendered.should match(/5/)
    rendered.should match(/1.5/)
    rendered.should match(/6/)
    rendered.should match(/1.5/)
    rendered.should match(/7/)
    rendered.should match(/1.5/)
    rendered.should match(/8/)
  end
end
