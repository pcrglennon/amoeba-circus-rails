require 'rails_helper'

RSpec.describe "Acts", :type => :request do
  describe "GET /acts" do
    it "works! (now write some real specs)" do
      get acts_path
      expect(response.status).to be(200)
    end
  end
end
