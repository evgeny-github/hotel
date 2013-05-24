require 'spec_helper'

describe Hotel do
  it "create valid hotel" do
    @hotel = Hotel.create(title: "Hawaii online", rating: 5, description: "The best place in the world")
    @hotel.should be_valid
  end
  
  it "create hotel without rating" do
    @hotel = Hotel.create(title: "Hawaii online", rating: nil, description: "The best place in the world")
    @hotel.should_not be_valid
  end
  
  it "create hotel without title" do
    @hotel = Hotel.create(rating: 3, description: "The best place in the world")
    @hotel.should_not be_valid
  end
  
  it "create hotel with invalid title" do
    @hotel = Hotel.create(title: "Everyone goes here!", rating: 3, description: "The best place in the world")
    @hotel.should_not be_valid
  end
  
end
