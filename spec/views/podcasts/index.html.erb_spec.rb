require 'spec_helper'

describe "podcasts/index" do
  before(:each) do
    assign(:podcasts, [
      stub_model(Podcast,
        :title => "Title",
        :author => "Author",
        :link => "Link",
        :duration => "Duration",
        :description => "Description"
      ),
      stub_model(Podcast,
        :title => "Title",
        :author => "Author",
        :link => "Link",
        :duration => "Duration",
        :description => "Description"
      )
    ])
  end

  it "renders a list of podcasts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
