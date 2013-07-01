require 'spec_helper'

describe "player_stats/show" do
  before(:each) do
    @player_stat = assign(:player_stat, stub_model(PlayerStat,
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
