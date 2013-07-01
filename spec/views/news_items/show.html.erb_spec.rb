require 'spec_helper'

describe "news_items/show" do
  before(:each) do
    @news_item = assign(:news_item, stub_model(NewsItem,
      :title => "Title",
      :description => "MyText",
      :pub_date => "Pub Date",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Pub Date/)
    rendered.should match(/Link/)
  end
end
