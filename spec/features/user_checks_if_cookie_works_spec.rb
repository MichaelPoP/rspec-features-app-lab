require 'rails_helper'
feature 'User enters a zipcode' do 
  scenario "user zipcode is remembered in a cookie" do
    visit root_path
    expect(page).to have_content(:zipcode)
    #browser restart = session cookie is lost
    
  end
end