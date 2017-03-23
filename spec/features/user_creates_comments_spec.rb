require 'spec_helper'

feature "Article creation" do
  before(:each) do
    sign_up
    new_article
  end

  scenario 'allows user to create comment' do
    fill_in :comment_body, with: 'comment example'
    click_button 'Create Comment'
    expect(page).to have_content 'said:'
  end

end
