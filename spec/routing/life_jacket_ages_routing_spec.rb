require "spec_helper"

describe LifeJacketAgesController do
  describe "routing" do

    it "routes to #index" do
      get("/life_jacket_ages").should route_to("life_jacket_ages#index")
    end

    it "routes to #new" do
      get("/life_jacket_ages/new").should route_to("life_jacket_ages#new")
    end

    it "routes to #show" do
      get("/life_jacket_ages/1").should route_to("life_jacket_ages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/life_jacket_ages/1/edit").should route_to("life_jacket_ages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/life_jacket_ages").should route_to("life_jacket_ages#create")
    end

    it "routes to #update" do
      put("/life_jacket_ages/1").should route_to("life_jacket_ages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/life_jacket_ages/1").should route_to("life_jacket_ages#destroy", :id => "1")
    end

  end
end
