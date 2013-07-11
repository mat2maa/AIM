require "spec_helper"

describe SeatClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/seat_classes").should route_to("seat_classes#index")
    end

    it "routes to #new" do
      get("/seat_classes/new").should route_to("seat_classes#new")
    end

    it "routes to #show" do
      get("/seat_classes/1").should route_to("seat_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seat_classes/1/edit").should route_to("seat_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seat_classes").should route_to("seat_classes#create")
    end

    it "routes to #update" do
      put("/seat_classes/1").should route_to("seat_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seat_classes/1").should route_to("seat_classes#destroy", :id => "1")
    end

  end
end
