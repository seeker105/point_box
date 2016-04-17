require 'rails_helper'

RSpec.feature "Admin can login" do
  include SpecHelper
  scenario "they fill in information on the login page" do
    register_users

    name      = "Richard"
    username  = "admin"
    password  = "password1"

    visit login_path
    expect(page).to have_content "Welcome to Point-Box Login Page"

    fill_in "Name", with: name
    fill_in "Username", with: username
    fill_in "Password", with: password
    fill_in "Password Confirmation", with: password
    click_on "Login"

    expect(page).to have_content "Welcome to your Admin Page"
    expect(page).to have_content "Frank"
    expect(page).to have_content "Susan"

  end

  scenario "they see an index of all non-admin users" do
    register_users

    name      = "Richard"
    username  = "admin"
    password  = "password1"

    visit login_path
    fill_in "Name", with: name
    fill_in "Username", with: username
    fill_in "Password", with: password
    fill_in "Password Confirmation", with: password
    click_on "Login"

    expect(page).to have_content "Welcome to your Admin Page"
    expect(page).to have_content "Frank"
    expect(page).to have_content "Susan"

  end
    
end
