require 'rails_helper'

feature 'Visitor checks the weather' do 
  before do
     # setup
     visit root_path
  end

  scenario 'sunny' do

    #exercise
    fill_in "Enter a Zipcode", with: @zipcode = "94702"
    click_button "ISIT GONNA RAYNE?"

    #verify
    expect(page).to have_content("SUNSHINE, YO!")
    expect(page).to have_content("NOBRELLA NEEDED")

    #TERDON

  
  end
  scenario 'raining' do
    visit root_path

    fill_in "Enter a Zipcode", with: @zipcode =  "66666"
    click_button "ISIT GONNA RAYNE?"

    expect(page).to have_content("OH NO, ITS RAINING!")
    expect(page).to have_content("GRAB YOUR BRELLA!")

  end 
  after do
    expect(get_me_the_cookie('zipcode')[:value]).to eq(@zipcode)
  end
end