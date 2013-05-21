require 'spec_helper'

describe "hotel_addresses/index.html.erb" do
  before(:each) do
    assign(:hotel_addresses, [
      stub_model(HotelAddress,
        :hotel_id => 1,
        :country => "Country",
        :state => "State",
        :city => "City",
        :street => "Street"
      ),
      stub_model(HotelAddress,
        :hotel_id => 1,
        :country => "Country",
        :state => "State",
        :city => "City",
        :street => "Street"
      )
    ])
  end

  it "renders a list of hotel_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
  end
end
