require 'spec_helper'

describe "rosters/new" do
  before(:each) do
    assign(:roster, stub_model(Roster,
      :full_name => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :jersey => 1,
      :roster_position => "MyString",
      :height => "MyString",
      :weight => 1,
      :age => 1,
      :experience => "MyString",
      :college => "MyString",
      :player_image => "MyString",
      :player_full_image => "MyString",
      :latest_news => "MyText"
    ).as_new_record)
  end

  it "renders new roster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rosters_path, :method => "post" do
      assert_select "input#roster_full_name", :name => "roster[full_name]"
      assert_select "input#roster_first_name", :name => "roster[first_name]"
      assert_select "input#roster_last_name", :name => "roster[last_name]"
      assert_select "input#roster_jersey", :name => "roster[jersey]"
      assert_select "input#roster_roster_position", :name => "roster[roster_position]"
      assert_select "input#roster_height", :name => "roster[height]"
      assert_select "input#roster_weight", :name => "roster[weight]"
      assert_select "input#roster_age", :name => "roster[age]"
      assert_select "input#roster_experience", :name => "roster[experience]"
      assert_select "input#roster_college", :name => "roster[college]"
      assert_select "input#roster_player_image", :name => "roster[player_image]"
      assert_select "input#roster_player_full_image", :name => "roster[player_full_image]"
      assert_select "textarea#roster_latest_news", :name => "roster[latest_news]"
    end
  end
end
