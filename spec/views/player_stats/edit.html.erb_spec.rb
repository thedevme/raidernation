require 'spec_helper'

describe "player_stats/edit" do
  before(:each) do
    @player_stat = assign(:player_stat, stub_model(PlayerStat,
      :year => 1
    ))
  end

  it "renders the edit player_stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => player_stats_path(@player_stat), :method => "post" do
      assert_select "input#player_stat_year", :name => "player_stat[year]"
    end
  end
end
