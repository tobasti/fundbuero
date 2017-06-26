require 'rails_helper'

RSpec.describe "found_items/edit", type: :view do
  before(:each) do
    @found_item = assign(:found_item, FoundItem.create!(
      :name => "MyString",
      :description => "MyText",
      :pic_url => "MyString"
    ))
  end

  it "renders the edit found_item form" do
    render

    assert_select "form[action=?][method=?]", found_item_path(@found_item), "post" do

      assert_select "input[name=?]", "found_item[name]"

      assert_select "textarea[name=?]", "found_item[description]"

      assert_select "input[name=?]", "found_item[pic_url]"
    end
  end
end
