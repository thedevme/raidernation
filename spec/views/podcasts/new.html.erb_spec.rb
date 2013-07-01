require 'spec_helper'

describe "podcasts/new" do
  before(:each) do
    assign(:podcast, stub_model(Podcast,
      :title => "MyString",
      :author => "MyString",
      :link => "MyString",
      :duration => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new podcast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => podcasts_path, :method => "post" do
      assert_select "input#podcast_title", :name => "podcast[title]"
      assert_select "input#podcast_author", :name => "podcast[author]"
      assert_select "input#podcast_link", :name => "podcast[link]"
      assert_select "input#podcast_duration", :name => "podcast[duration]"
      assert_select "input#podcast_description", :name => "podcast[description]"
    end
  end
end
