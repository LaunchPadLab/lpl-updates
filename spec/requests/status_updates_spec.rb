require 'rails_helper'

RSpec.describe "StatusUpdates", :type => :request do
  describe "GET /status_updates" do
    it "works! (now write some real specs)" do
      get status_updates_path
      expect(response.status).to be(200)
    end
  end
end
