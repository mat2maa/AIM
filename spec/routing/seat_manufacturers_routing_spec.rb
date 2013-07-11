require "spec_helper"

describe SeatManufacturersController do
  describe "routing" do

    it "routes to #index" do
      get("/seat_manufacturers").should route_to("seat_manufacturers#index")
    end

    it "routes to #new" do
      get("/seat_manufacturers/new").should route_to("seat_manufacturers#new")
    end

    it "routes to #show" do
      get("/seat_manufacturers/1").should route_to("seat_manufacturers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seat_manufacturers/1/edit").should route_to("seat_manufacturers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seat_manufacturers").should route_to("seat_manufacturers#create")
    end

    it "routes to #update" do
      put("/seat_manufacturers/1").should route_to("seat_manufacturers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seat_manufacturers/1").should route_to("seat_manufacturers#destroy", :id => "1")
    end

  end
end
