require "spec_helper"

describe SafetyCardsController do
  describe "routing" do

    it "routes to #index" do
      get("/safety_cards").should route_to("safety_cards#index")
    end

    it "routes to #new" do
      get("/safety_cards/new").should route_to("safety_cards#new")
    end

    it "routes to #show" do
      get("/safety_cards/1").should route_to("safety_cards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/safety_cards/1/edit").should route_to("safety_cards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/safety_cards").should route_to("safety_cards#create")
    end

    it "routes to #update" do
      put("/safety_cards/1").should route_to("safety_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/safety_cards/1").should route_to("safety_cards#destroy", :id => "1")
    end

  end
end
