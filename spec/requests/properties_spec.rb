require 'spec_helper'

describe "Properties" do
  describe "GET /properties" do
    pending "need to add more tests"
    it "should welcome the user" do
      visit '/properties'
      # save_and_open_page
      page.should have_content('Listing')
    end
  end
end
