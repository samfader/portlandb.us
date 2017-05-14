require 'rails_helper'

RSpec.describe "volunteers/index", type: :view do
  before(:each) do
    assign(:volunteers, [
      Volunteer.create!(
        :name => "Name",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :email => "Email",
        :phone => "Phone",
        :focus => "MyText",
        :essay => "MyText"
      ),
      Volunteer.create!(
        :name => "Name",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :email => "Email",
        :phone => "Phone",
        :focus => "MyText",
        :essay => "MyText"
      )
    ])
  end

  it "renders a list of volunteers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
