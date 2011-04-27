require 'spec_helper'

describe "customers/new.html.erb" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :first_name => "MyString",
      :last_name => "MyString",
      :document => "MyString",
      :phone => "MyString",
      :cell_phone => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_first_name", :name => "customer[first_name]"
      assert_select "input#customer_last_name", :name => "customer[last_name]"
      assert_select "input#customer_document", :name => "customer[document]"
      assert_select "input#customer_phone", :name => "customer[phone]"
      assert_select "input#customer_cell_phone", :name => "customer[cell_phone]"
      assert_select "input#customer_active", :name => "customer[active]"
    end
  end
end
