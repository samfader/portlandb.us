require 'rails_helper'

RSpec.describe "volunteers/show", type: :view do
  before(:each) do
    @volunteer = assign(:volunteer, Volunteer.create!(
      :name => "Name",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :email => "Email",
      :phone => "Phone",
      :focus => "MyText",
      :essay => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
