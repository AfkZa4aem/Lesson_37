require 'spec_helper'

feature "Article creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New Article'
  end

  scenario 'allows user to create new article' do
    new_article
    expect(page).to have_content 'Comments'
  end


end
