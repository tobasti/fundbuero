require 'rails_helper'

RSpec.describe "found_items/index", type: :view do
  before(:each) do
    assign(:found_items, [
      FoundItem.create!(
        :name => "Name",
        :description => "MyText",
        :pic_url => "Pic Url"
      ),
      FoundItem.create!(
        :name => "anotherName",
        :description => "MyText",
        :pic_url => "Pic Url"
      )
    ])
  end

  it "renders a list of found_items" do
    render
    assert_select "tr>td", :text => /Name/, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pic Url".to_s, :count => 2
  end
end
