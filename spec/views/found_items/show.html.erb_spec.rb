require 'rails_helper'

RSpec.describe "found_items/show", type: :view do
  before(:each) do
    @found_item = assign(:found_item, FoundItem.create!(
      :name => "Name",
      :description => "MyText",
      :pic_url => "Pic Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pic Url/)
  end
end
