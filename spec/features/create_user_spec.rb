require 'rails_helper'

RSpec.feature "users can create account" do
  scenario "with valid input" do

    visit "/"
    click_link "Create Account"
    fill_in "Name", with: "Tommy Caruso"
    fill_in "Email", with: "user@test.com"
    fill_in "user_password", with: "password"
    fill_in "Password Confirmation", with: "password"
    fill_in "Phone Number", with: "(555) 555-1234"
    fill_in "Street Address", with: "123 Park Ave"
    fill_in "City", with: "Corona"
    fill_in "State", with: "CA"
    fill_in "Zip Code", with: "90210"
    click_button "Create Account"
    expect(page).to have_content("You have successfully created an account.")
  end
end
