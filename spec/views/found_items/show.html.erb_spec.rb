require 'rails_helper'

RSpec.describe "found_items/show", type: :view do
  before(:each) do
    @found_item = assign(:found_item, FoundItem.create!(
      :name => "Name",
      :description => "MyText",
      :pic_url => "123.jpg"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    # regex matches the asset pipeline link or the original file name
    expect(rendered).to match(/123-[0-9|a-f]{64}.jpg||123.jpg/)
  end
end
