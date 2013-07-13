require "spec_helper"

describe AeroplanesController do
  describe "routing" do

    it "routes to #index" do
      get("/aeroplanes").should route_to("aeroplanes#index")
    end

    it "routes to #new" do
      get("/aeroplanes/new").should route_to("aeroplanes#new")
    end

    it "routes to #show" do
      get("/aeroplanes/1").should route_to("aeroplanes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aeroplanes/1/edit").should route_to("aeroplanes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aeroplanes").should route_to("aeroplanes#create")
    end

    it "routes to #update" do
      put("/aeroplanes/1").should route_to("aeroplanes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aeroplanes/1").should route_to("aeroplanes#destroy", :id => "1")
    end

  end
end
