require "spec_helper"

describe SeatLayoutsController do
  describe "routing" do

    it "routes to #index" do
      get("/seat_layouts").should route_to("seat_layouts#index")
    end

    it "routes to #new" do
      get("/seat_layouts/new").should route_to("seat_layouts#new")
    end

    it "routes to #show" do
      get("/seat_layouts/1").should route_to("seat_layouts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seat_layouts/1/edit").should route_to("seat_layouts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seat_layouts").should route_to("seat_layouts#create")
    end

    it "routes to #update" do
      put("/seat_layouts/1").should route_to("seat_layouts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seat_layouts/1").should route_to("seat_layouts#destroy", :id => "1")
    end

  end
end
