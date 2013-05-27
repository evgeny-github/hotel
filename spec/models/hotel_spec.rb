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
  
  it "hotel has 1 address" do
    should have_many(:comments)
  end
  
  it "hotel has 1 address, only one" do
    should_not have_one(:comments)
  end
  
  it "create hotel with short title" do
    @hotel = Hotel.create(title: "Ho", rating: 2)
    @hotel.should_not be_valid
  end
  
  it "create hotel with long title" do
    @hotel = Hotel.create(title: "Hotel 12345 Hotel 12345 Hotel 12345 ", rating: 2)
    @hotel.should_not be_valid
  end
  
  context "check hotels with best rating" do
    before(:each) do
      @hotel1 = Hotel.create(title: "Hotel 1", rating: 1)
      @hotel2 = Hotel.create(title: "Hotel 2", rating: 1)
      @hotel3 = Hotel.create(title: "Hotel 3", rating: 1)
      @hotel4 = Hotel.create(title: "Hotel 4", rating: 1)
      @comment1 = Comment.create(hotel_id: @hotel1.id, star_rating: 3, user_comment: "this is test comment")
      @comment4 = Comment.create(hotel_id: @hotel4.id, star_rating: 4, user_comment: "this is test comment")
    end
    
    it "3 hotels with best rating are selected" do
      @comment2 = Comment.create(hotel_id: @hotel2.id, star_rating: 1, user_comment: "this is test comment")
      @comment3 = Comment.create(hotel_id: @hotel3.id, star_rating: 3, user_comment: "this is test comment")
      @hotels_top = Comment.user_choice
      @hotels_top.should have(3).items
    end
    
    it "rating counting check" do
      # This rates 3.50
      @comment2 = Comment.create(hotel_id: @hotel2.id, star_rating: 2, user_comment: "this is test comment")
      @comment2 = Comment.create(hotel_id: @hotel2.id, star_rating: 5, user_comment: "this is test comment")
      # This rates 2.66
      @comment3 = Comment.create(hotel_id: @hotel3.id, star_rating: 3, user_comment: "this is test comment")
      @comment3 = Comment.create(hotel_id: @hotel3.id, star_rating: 3, user_comment: "this is test comment")
      @comment3 = Comment.create(hotel_id: @hotel3.id, star_rating: 2, user_comment: "this is test comment")
      @hotels_top = Comment.user_choice
      @hotels_top.should include @comment1
      @hotels_top.should include @comment4
      @hotels_top.should include @comment2
    end
    
    it "hotels without rating are excluded" do
      @comment1 = Comment.create(hotel_id: @hotel1.id, star_rating: 3, user_comment: "this is test comment")
      @comment4 = Comment.create(hotel_id: @hotel4.id, star_rating: 5, user_comment: "this is test comment")
      @hotels_top = Comment.user_choice
      @hotels_top.should have(2).items
    end
  end
  
end
