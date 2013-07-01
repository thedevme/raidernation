require 'spec_helper'

describe "podcasts/edit" do
  before(:each) do
    @podcast = assign(:podcast, stub_model(Podcast,
      :title => "MyString",
      :author => "MyString",
      :link => "MyString",
      :duration => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit podcast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => podcasts_path(@podcast), :method => "post" do
      assert_select "input#podcast_title", :name => "podcast[title]"
      assert_select "input#podcast_author", :name => "podcast[author]"
      assert_select "input#podcast_link", :name => "podcast[link]"
      assert_select "input#podcast_duration", :name => "podcast[duration]"
      assert_select "input#podcast_description", :name => "podcast[description]"
    end
  end
end
