require 'rails_helper'

RSpec.describe "volunteers/new", type: :view do
  before(:each) do
    assign(:volunteer, Volunteer.new(
      :name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :focus => "MyText",
      :essay => "MyText"
    ))
  end

  it "renders new volunteer form" do
    render

    assert_select "form[action=?][method=?]", volunteers_path, "post" do

      assert_select "input#volunteer_name[name=?]", "volunteer[name]"

      assert_select "input#volunteer_address_1[name=?]", "volunteer[address_1]"

      assert_select "input#volunteer_address_2[name=?]", "volunteer[address_2]"

      assert_select "input#volunteer_email[name=?]", "volunteer[email]"

      assert_select "input#volunteer_phone[name=?]", "volunteer[phone]"

      assert_select "textarea#volunteer_focus[name=?]", "volunteer[focus]"

      assert_select "textarea#volunteer_essay[name=?]", "volunteer[essay]"
    end
  end
end
