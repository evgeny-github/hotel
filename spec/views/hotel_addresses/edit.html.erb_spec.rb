require 'spec_helper'

describe "hotel_addresses/edit.html.erb" do
  before(:each) do
    @hotel_address = assign(:hotel_address, stub_model(HotelAddress,
      :hotel_id => 1,
      :country => "MyString",
      :state => "MyString",
      :city => "MyString",
      :street => "MyString"
    ))
  end

  it "renders the edit hotel_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hotel_addresses_path(@hotel_address), :method => "post" do
      assert_select "input#hotel_address_hotel_id", :name => "hotel_address[hotel_id]"
      assert_select "input#hotel_address_country", :name => "hotel_address[country]"
      assert_select "input#hotel_address_state", :name => "hotel_address[state]"
      assert_select "input#hotel_address_city", :name => "hotel_address[city]"
      assert_select "input#hotel_address_street", :name => "hotel_address[street]"
    end
  end
end
