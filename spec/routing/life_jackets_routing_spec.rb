require "spec_helper"

describe LifeJacketsController do
  describe "routing" do

    it "routes to #index" do
      get("/life_jackets").should route_to("life_jackets#index")
    end

    it "routes to #new" do
      get("/life_jackets/new").should route_to("life_jackets#new")
    end

    it "routes to #show" do
      get("/life_jackets/1").should route_to("life_jackets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/life_jackets/1/edit").should route_to("life_jackets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/life_jackets").should route_to("life_jackets#create")
    end

    it "routes to #update" do
      put("/life_jackets/1").should route_to("life_jackets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/life_jackets/1").should route_to("life_jackets#destroy", :id => "1")
    end

  end
end
