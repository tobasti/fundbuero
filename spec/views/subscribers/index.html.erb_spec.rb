require 'rails_helper'

RSpec.describe "subscribers/index", type: :view do
  before(:each) do
    assign(:subscribers, [
      Subscriber.create!(
        :name => "Name",
        :email => "abc@example.org"
      ),
      Subscriber.create!(
        :name => "Name",
        :email => "def@example.org"
      )
    ])
  end

  it "renders a list of subscribers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => /@example.org/, :count => 2
  end
end
