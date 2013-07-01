require 'spec_helper'

describe "podcasts/show" do
  before(:each) do
    @podcast = assign(:podcast, stub_model(Podcast,
      :title => "Title",
      :author => "Author",
      :link => "Link",
      :duration => "Duration",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/Link/)
    rendered.should match(/Duration/)
    rendered.should match(/Description/)
  end
end
