require 'spec_helper'

describe "hotels/index.html.erb" do
  before(:each) do
    assign(:hotels, [
      stub_model(Hotel,
        :title => "Title",
        :rating => 1,
        :breakfast_included => 1,
        :description => "Description",
        :price => 1
      ),
      stub_model(Hotel,
        :title => "Title",
        :rating => 1,
        :breakfast_included => 1,
        :description => "Description",
        :price => 1
      )
    ])
  end

  it "renders a list of hotels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
