require 'rails_helper'

RSpec.describe "Amoebas", :type => :request do
  describe "GET /amoebas" do
    it "works! (now write some real specs)" do
      get amoebas_path
      expect(response.status).to be(200)
    end
  end
end
