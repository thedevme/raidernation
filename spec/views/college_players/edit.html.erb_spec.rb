require 'spec_helper'

describe "college_players/edit" do
  before(:each) do
    @college_player = assign(:college_player, stub_model(CollegePlayer,
      :full_name => "MyString",
      :position => "MyString",
      :college => "MyString",
      :height => "MyString",
      :arm_length => "MyString",
      :weight => "MyString",
      :hands => "MyString",
      :comparison => "MyString",
      :strengths => "MyString",
      :weakness => "MyString",
      :forty_dash => "MyString",
      :vert_jump => "MyString",
      :broad_jump => "MyString",
      :three_yd_cone => "MyString",
      :twenty_yd_shuttle => "MyString",
      :sixty_yd_shuttle => "MyString",
      :draft_round => "MyString",
      :bench => "MyString",
      :draft_pick => "MyString",
      :overview => "MyString",
      :espn_overall_rating => "MyString",
      :cbs_overall_rating => "MyString",
      :espn_position_rating => "MyString",
      :cbs_position_rating => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :overall_draft_position => "MyString"
    ))
  end

  it "renders the edit college_player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => college_players_path(@college_player), :method => "post" do
      assert_select "input#college_player_full_name", :name => "college_player[full_name]"
      assert_select "input#college_player_position", :name => "college_player[position]"
      assert_select "input#college_player_college", :name => "college_player[college]"
      assert_select "input#college_player_height", :name => "college_player[height]"
      assert_select "input#college_player_arm_length", :name => "college_player[arm_length]"
      assert_select "input#college_player_weight", :name => "college_player[weight]"
      assert_select "input#college_player_hands", :name => "college_player[hands]"
      assert_select "input#college_player_comparison", :name => "college_player[comparison]"
      assert_select "input#college_player_strengths", :name => "college_player[strengths]"
      assert_select "input#college_player_weakness", :name => "college_player[weakness]"
      assert_select "input#college_player_forty_dash", :name => "college_player[forty_dash]"
      assert_select "input#college_player_vert_jump", :name => "college_player[vert_jump]"
      assert_select "input#college_player_broad_jump", :name => "college_player[broad_jump]"
      assert_select "input#college_player_three_yd_cone", :name => "college_player[three_yd_cone]"
      assert_select "input#college_player_twenty_yd_shuttle", :name => "college_player[twenty_yd_shuttle]"
      assert_select "input#college_player_sixty_yd_shuttle", :name => "college_player[sixty_yd_shuttle]"
      assert_select "input#college_player_draft_round", :name => "college_player[draft_round]"
      assert_select "input#college_player_bench", :name => "college_player[bench]"
      assert_select "input#college_player_draft_pick", :name => "college_player[draft_pick]"
      assert_select "input#college_player_overview", :name => "college_player[overview]"
      assert_select "input#college_player_espn_overall_rating", :name => "college_player[espn_overall_rating]"
      assert_select "input#college_player_cbs_overall_rating", :name => "college_player[cbs_overall_rating]"
      assert_select "input#college_player_espn_position_rating", :name => "college_player[espn_position_rating]"
      assert_select "input#college_player_cbs_position_rating", :name => "college_player[cbs_position_rating]"
      assert_select "input#college_player_first_name", :name => "college_player[first_name]"
      assert_select "input#college_player_last_name", :name => "college_player[last_name]"
      assert_select "input#college_player_overall_draft_position", :name => "college_player[overall_draft_position]"
    end
  end
end
