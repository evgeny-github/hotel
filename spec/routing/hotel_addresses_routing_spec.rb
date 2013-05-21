require "spec_helper"

describe HotelAddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/hotel_addresses").should route_to("hotel_addresses#index")
    end

    it "routes to #new" do
      get("/hotel_addresses/new").should route_to("hotel_addresses#new")
    end

    it "routes to #show" do
      get("/hotel_addresses/1").should route_to("hotel_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hotel_addresses/1/edit").should route_to("hotel_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hotel_addresses").should route_to("hotel_addresses#create")
    end

    it "routes to #update" do
      put("/hotel_addresses/1").should route_to("hotel_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hotel_addresses/1").should route_to("hotel_addresses#destroy", :id => "1")
    end

  end
end
