require 'spec_helper'

describe "hotel_addresses/show.html.erb" do
  before(:each) do
    @hotel_address = assign(:hotel_address, stub_model(HotelAddress,
      :hotel_id => 1,
      :country => "Country",
      :state => "State",
      :city => "City",
      :street => "Street"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
  end
end
