require "rails_helper"

RSpec.describe StatusUpdatesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/status_updates").to route_to("status_updates#index")
    end

    it "routes to #new" do
      expect(:get => "/status_updates/new").to route_to("status_updates#new")
    end

    it "routes to #show" do
      expect(:get => "/status_updates/1").to route_to("status_updates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/status_updates/1/edit").to route_to("status_updates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/status_updates").to route_to("status_updates#create")
    end

    it "routes to #update" do
      expect(:put => "/status_updates/1").to route_to("status_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/status_updates/1").to route_to("status_updates#destroy", :id => "1")
    end

  end
end
