require 'spec_helper'

feature 'register a dog', %q{
  As a dog owner
  I want to register my dog
  So that I can connect with other dog lovers
  } do


  scenario "I want to register a new dog" do
    visit '/owners/new'

    fill_in "First name", with: "Betty"
    fill_in "Last name", with: "Draper"
    fill_in "Email", with: "betty@draper.com"
    fill_in "Dog name", with: "Ruffles"

    click_on "Register yer dog"

  end
end