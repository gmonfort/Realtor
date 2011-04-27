require 'spec_helper'

describe "charges/new.html.erb" do
  before(:each) do
    assign(:charge, stub_model(Charge,
      :name => "MyString",
      :code => "MyString",
      :amount => "9.99",
      :kind => 1
    ).as_new_record)
  end

  it "renders new charge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charges_path, :method => "post" do
      assert_select "input#charge_name", :name => "charge[name]"
      assert_select "input#charge_code", :name => "charge[code]"
      assert_select "input#charge_amount", :name => "charge[amount]"
      assert_select "input#charge_kind", :name => "charge[kind]"
    end
  end
end
