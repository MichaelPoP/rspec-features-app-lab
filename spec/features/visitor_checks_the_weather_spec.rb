require 'rails_helper'

feature 'Visitor checks the weather' do 

  scenario 'sunny' do
    #setup
    visit root_path

    #exercise
    fill_in "Enter a Zipcode", with: "94702"
    click_button "ISIT GONNA RAYNE?"

    #verify
    expect(page).to have_content("SUNSHINE, YO!")
    expect(page).to have_content("NOBRELLA NEEDED")

    #TERDON
  end
  
end