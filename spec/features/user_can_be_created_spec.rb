require 'rails_helper'


RSpec.feature "Admin creates a user" do
  scenario "they fill in information on the create page" do
    name      = "Richard"
    username  = "admin"
    password  = "password1"
    # @admin = User()

    visit new_admin_user_path
    # save_and_open_page

    fill_in "Name", with: name
    fill_in "Username", with: username
    fill_in "Password", with: password
    fill_in "Password_confirmation", with: password
    click_on "Create User"

    expect(page).to have_content "Welcome to your Admin Account"
  end

end
