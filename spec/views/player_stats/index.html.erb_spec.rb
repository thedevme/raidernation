require 'spec_helper'

describe "player_stats/index" do
  before(:each) do
    assign(:player_stats, [
      stub_model(PlayerStat,
        :year => 1
      ),
      stub_model(PlayerStat,
        :year => 1
      )
    ])
  end

  it "renders a list of player_stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
