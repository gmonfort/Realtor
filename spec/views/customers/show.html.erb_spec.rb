require 'spec_helper'

describe "customers/show.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :first_name => "First Name",
      :last_name => "Last Name",
      :document => "Document",
      :phone => "Phone",
      :cell_phone => "Cell Phone",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Document/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cell Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
