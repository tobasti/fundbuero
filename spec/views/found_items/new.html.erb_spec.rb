require 'rails_helper'

RSpec.describe "found_items/new", type: :view do
  before(:each) do
    assign(:found_item, FoundItem.new(
      :name => "MyString",
      :description => "MyText",
      :pic_url => "MyString"
    ))
  end

  it "renders new found_item form" do
    render

    assert_select "form[action=?][method=?]", found_items_path, "post" do

      assert_select "input[name=?]", "found_item[name]"

      assert_select "textarea[name=?]", "found_item[description]"

      assert_select "input[name=?]", "found_item[pic_url]"
    end
  end
end
