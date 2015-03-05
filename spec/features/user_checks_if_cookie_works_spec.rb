require 'rails_helper'

feature 'Visitor has a zipcode in their cookies' do
  before do
    # setup
    page.driver.browser.set_cookie("zipcode=66666") 
    
    # exercise 
    visit root_path
  end

  scenario 'raining' do


    # verify
    expect(page).to have_content("OH NO, ITS RAINING!")
    expect(page).to have_content("GRAB YOUR BRELLA!")
  end
end