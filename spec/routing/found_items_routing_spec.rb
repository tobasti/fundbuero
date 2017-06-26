require "rails_helper"

RSpec.describe FoundItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/found_items").to route_to("found_items#index")
    end

    it "routes to #new" do
      expect(:get => "/found_items/new").to route_to("found_items#new")
    end

    it "routes to #show" do
      expect(:get => "/found_items/1").to route_to("found_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/found_items/1/edit").to route_to("found_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/found_items").to route_to("found_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/found_items/1").to route_to("found_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/found_items/1").to route_to("found_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/found_items/1").to route_to("found_items#destroy", :id => "1")
    end

  end
end
