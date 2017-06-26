require 'rails_helper'

RSpec.describe "FoundItems", type: :request do
  describe "GET /found_items" do
    it "works! (now write some real specs)" do
      get found_items_path
      expect(response).to have_http_status(200)
    end
  end
end
