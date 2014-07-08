require "rails_helper"

RSpec.describe AmoebasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/amoebas").to route_to("amoebas#index")
    end

    it "routes to #new" do
      expect(:get => "/amoebas/new").to route_to("amoebas#new")
    end

    it "routes to #show" do
      expect(:get => "/amoebas/1").to route_to("amoebas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/amoebas/1/edit").to route_to("amoebas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/amoebas").to route_to("amoebas#create")
    end

    it "routes to #update" do
      expect(:put => "/amoebas/1").to route_to("amoebas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/amoebas/1").to route_to("amoebas#destroy", :id => "1")
    end

  end
end
