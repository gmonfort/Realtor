require 'spec_helper'

describe "rentals/edit.html.erb" do
  before(:each) do
    @rental = assign(:rental, stub_model(Rental,
      :start_date => Date.today.to_s(:db),
      :mode => 1
    ))
  end

  it "renders the edit rental form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rentals_path(@rental), :method => "post" do
      assert_select "input#rental_mode", :name => "rental[mode]"
    end
  end
end
