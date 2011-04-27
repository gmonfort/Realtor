require 'spec_helper'

describe "rentals/new.html.erb" do
  before(:each) do
    assign(:rental, stub_model(Rental,
      :start_date => Date.today.to_s(:db),
      :mode => 1
    ).as_new_record)
  end

  it "renders new rental form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rentals_path, :method => "post" do
      assert_select "input#rental_mode", :name => "rental[mode]"
    end
  end
end
