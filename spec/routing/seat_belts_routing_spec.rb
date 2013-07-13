require "spec_helper"

describe SeatBeltsController do
  describe "routing" do

    it "routes to #index" do
      get("/seat_belts").should route_to("seat_belts#index")
    end

    it "routes to #new" do
      get("/seat_belts/new").should route_to("seat_belts#new")
    end

    it "routes to #show" do
      get("/seat_belts/1").should route_to("seat_belts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seat_belts/1/edit").should route_to("seat_belts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seat_belts").should route_to("seat_belts#create")
    end

    it "routes to #update" do
      put("/seat_belts/1").should route_to("seat_belts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seat_belts/1").should route_to("seat_belts#destroy", :id => "1")
    end

  end
end
