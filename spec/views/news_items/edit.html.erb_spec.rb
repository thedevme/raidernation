require 'spec_helper'

describe "news_items/edit" do
  before(:each) do
    @news_item = assign(:news_item, stub_model(NewsItem,
      :title => "MyString",
      :description => "MyText",
      :pub_date => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit news_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_items_path(@news_item), :method => "post" do
      assert_select "input#news_item_title", :name => "news_item[title]"
      assert_select "textarea#news_item_description", :name => "news_item[description]"
      assert_select "input#news_item_pub_date", :name => "news_item[pub_date]"
      assert_select "input#news_item_link", :name => "news_item[link]"
    end
  end
end
