require "spec_helper"

describe AirlinesController do
  describe "routing" do

    it "routes to #index" do
      get("/airlines").should route_to("airlines#index")
    end

    it "routes to #new" do
      get("/airlines/new").should route_to("airlines#new")
    end

    it "routes to #show" do
      get("/airlines/1").should route_to("airlines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/airlines/1/edit").should route_to("airlines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/airlines").should route_to("airlines#create")
    end

    it "routes to #update" do
      put("/airlines/1").should route_to("airlines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/airlines/1").should route_to("airlines#destroy", :id => "1")
    end

  end
end
