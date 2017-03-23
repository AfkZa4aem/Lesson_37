def sign_up
  visit new_user_registration_path
  
  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'username'
  fill_in :user_password, with: 'secure123!@#'
  fill_in :user_password_confirmation, with: 'secure123!@#'

  click_button 'Sign up'
end

def new_article
  visit new_article_path
  fill_in :article_title, with: 'semple title'
  fill_in :article_text, with: 'lorem ipsum'
  click_button 'Save Article'
end
