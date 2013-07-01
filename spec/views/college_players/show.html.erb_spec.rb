require 'spec_helper'

describe "college_players/show" do
  before(:each) do
    @college_player = assign(:college_player, stub_model(CollegePlayer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/Position/)
    rendered.should match(/College/)
    rendered.should match(/Height/)
    rendered.should match(/Arm Length/)
    rendered.should match(/Weight/)
    rendered.should match(/Hands/)
    rendered.should match(/Comparison/)
    rendered.should match(/Strengths/)
    rendered.should match(/Weakness/)
    rendered.should match(/Forty Dash/)
    rendered.should match(/Vert Jump/)
    rendered.should match(/Broad Jump/)
    rendered.should match(/Three Yd Cone/)
    rendered.should match(/Twenty Yd Shuttle/)
    rendered.should match(/Sixty Yd Shuttle/)
    rendered.should match(/Draft Round/)
    rendered.should match(/Bench/)
    rendered.should match(/Draft Pick/)
    rendered.should match(/Overview/)
    rendered.should match(/Espn Overall Rating/)
    rendered.should match(/Cbs Overall Rating/)
    rendered.should match(/Espn Position Rating/)
    rendered.should match(/Cbs Position Rating/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Overall Draft Position/)
  end
end
