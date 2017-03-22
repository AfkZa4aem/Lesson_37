require 'spec_helper'

feature "Article creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path

    expect(page).to have_content 'New Article'
  end

  scenario 'allows suer to create new article' do
    visit new_article_path
    fill_in :article_title, with: 'semple title'
    fill_in :article_text, with: 'lorem ipsum'
    click_button 'Save Article'
    expect(page).to have_content 'Comments'
  end
end
