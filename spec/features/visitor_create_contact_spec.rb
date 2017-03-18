require "spec_helper"

feature "Contact creation" do
  scenario "allows access to contact page" do
    visit '/contacts'

    expect(page).to have_content 'Contact Us'
  end
end