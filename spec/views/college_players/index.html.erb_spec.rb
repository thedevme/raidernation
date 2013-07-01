require 'spec_helper'

describe "college_players/index" do
  before(:each) do
    assign(:college_players, [
      stub_model(CollegePlayer,
        :full_name => "Full Name",
        :position => "Position",
        :college => "College",
        :height => "Height",
        :arm_length => "Arm Length",
        :weight => "Weight",
        :hands => "Hands",
        :comparison => "Comparison",
        :strengths => "Strengths",
        :weakness => "Weakness",
        :forty_dash => "Forty Dash",
        :vert_jump => "Vert Jump",
        :broad_jump => "Broad Jump",
        :three_yd_cone => "Three Yd Cone",
        :twenty_yd_shuttle => "Twenty Yd Shuttle",
        :sixty_yd_shuttle => "Sixty Yd Shuttle",
        :draft_round => "Draft Round",
        :bench => "Bench",
        :draft_pick => "Draft Pick",
        :overview => "Overview",
        :espn_overall_rating => "Espn Overall Rating",
        :cbs_overall_rating => "Cbs Overall Rating",
        :espn_position_rating => "Espn Position Rating",
        :cbs_position_rating => "Cbs Position Rating",
        :first_name => "First Name",
        :last_name => "Last Name",
        :overall_draft_position => "Overall Draft Position"
      ),
      stub_model(CollegePlayer,
        :full_name => "Full Name",
        :position => "Position",
        :college => "College",
        :height => "Height",
        :arm_length => "Arm Length",
        :weight => "Weight",
        :hands => "Hands",
        :comparison => "Comparison",
        :strengths => "Strengths",
        :weakness => "Weakness",
        :forty_dash => "Forty Dash",
        :vert_jump => "Vert Jump",
        :broad_jump => "Broad Jump",
        :three_yd_cone => "Three Yd Cone",
        :twenty_yd_shuttle => "Twenty Yd Shuttle",
        :sixty_yd_shuttle => "Sixty Yd Shuttle",
        :draft_round => "Draft Round",
        :bench => "Bench",
        :draft_pick => "Draft Pick",
        :overview => "Overview",
        :espn_overall_rating => "Espn Overall Rating",
        :cbs_overall_rating => "Cbs Overall Rating",
        :espn_position_rating => "Espn Position Rating",
        :cbs_position_rating => "Cbs Position Rating",
        :first_name => "First Name",
        :last_name => "Last Name",
        :overall_draft_position => "Overall Draft Position"
      )
    ])
  end

  it "renders a list of college_players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "College".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "Arm Length".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
    assert_select "tr>td", :text => "Hands".to_s, :count => 2
    assert_select "tr>td", :text => "Comparison".to_s, :count => 2
    assert_select "tr>td", :text => "Strengths".to_s, :count => 2
    assert_select "tr>td", :text => "Weakness".to_s, :count => 2
    assert_select "tr>td", :text => "Forty Dash".to_s, :count => 2
    assert_select "tr>td", :text => "Vert Jump".to_s, :count => 2
    assert_select "tr>td", :text => "Broad Jump".to_s, :count => 2
    assert_select "tr>td", :text => "Three Yd Cone".to_s, :count => 2
    assert_select "tr>td", :text => "Twenty Yd Shuttle".to_s, :count => 2
    assert_select "tr>td", :text => "Sixty Yd Shuttle".to_s, :count => 2
    assert_select "tr>td", :text => "Draft Round".to_s, :count => 2
    assert_select "tr>td", :text => "Bench".to_s, :count => 2
    assert_select "tr>td", :text => "Draft Pick".to_s, :count => 2
    assert_select "tr>td", :text => "Overview".to_s, :count => 2
    assert_select "tr>td", :text => "Espn Overall Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Cbs Overall Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Espn Position Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Cbs Position Rating".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Overall Draft Position".to_s, :count => 2
  end
end
