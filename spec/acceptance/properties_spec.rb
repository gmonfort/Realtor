require 'spec_helper'
require 'acceptance/acceptance_helper'

feature "Properties", %q{
  In order to manage a real state agency
  As an user
  I want to create and manage Properties
} do

  fixtures :all

  background do
    # Property.create!(:name => 'One')
    # Property.create!(:name => 'Two')
  end

  scenario "Properties listing", :js => true do
    visit '/properties'
    # save_and_open_page
    page.should have_content('prop1')
    page.should have_content('prop2')
    page.should have_content('prop3')

    page.should have_selector('table tr')
  end

end

