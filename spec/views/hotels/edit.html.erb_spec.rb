require 'spec_helper'

describe "hotels/edit.html.erb" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :title => "MyString",
      :rating => 1,
      :breakfast_included => 1,
      :description => "MyString",
      :price => 1
    ))
  end

  it "renders the edit hotel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hotels_path(@hotel), :method => "post" do
      assert_select "input#hotel_title", :name => "hotel[title]"
      assert_select "input#hotel_rating", :name => "hotel[rating]"
      assert_select "input#hotel_breakfast_included", :name => "hotel[breakfast_included]"
      assert_select "input#hotel_description", :name => "hotel[description]"
      assert_select "input#hotel_price", :name => "hotel[price]"
    end
  end
end
