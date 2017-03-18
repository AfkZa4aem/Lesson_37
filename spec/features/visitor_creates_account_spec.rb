require "spec_helper"

feature "account creation" do
  scenario "allows guest to create account" do
    visit new_user_registration_path

    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'username'
    fill_in :user_password, with: 'secure123!@#'
    fill_in :user_password_confirmation, with: 'secure123!@#'

    click_button 'Sign up'

    expect(page).to have_content 'Welcome!'
  end

end