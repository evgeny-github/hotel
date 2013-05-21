require 'spec_helper'

describe "comments/new.html.erb" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :user_id => 1,
      :hotel_id => 1,
      :star_rating => 1,
      :user_comment => "MyString"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_user_id", :name => "comment[user_id]"
      assert_select "input#comment_hotel_id", :name => "comment[hotel_id]"
      assert_select "input#comment_star_rating", :name => "comment[star_rating]"
      assert_select "input#comment_user_comment", :name => "comment[user_comment]"
    end
  end
end