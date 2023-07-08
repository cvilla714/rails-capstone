require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  before do
    User.create(id: 3, email: 'test@test.com', name: 'testing', password: 'password')
  end

  describe 'Login content' do
    it 'will log in' do
      visit new_user_session_path
      fill_in 'Email', with: 'test@test.com'
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully')
    end

    it 'will not log in' do
      visit new_user_session_path
      fill_in 'Email', with: 'unkown@example.com'
      click_button 'Log in'
      expect(page).to have_css('.alert.main', text: 'Invalid Email or password')
    end
  end
end
