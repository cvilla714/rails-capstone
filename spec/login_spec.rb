require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  describe 'Login content' do
    User.create(id: 3, email: 'test@test.com', name: 'testing', password: 'password')

    it 'will log in' do
      visit new_user_session_path
      fill_in 'Email', with: 'test@test.com'
      click_on 'Log in'
      expect(page).to have_content('Signed in successfully')
    end
  end
end

RSpec.describe 'Login', type: :feature do
  describe 'Login content' do
    User.create(id: 3, email: 'test@test.com', name: 'testing', password: 'password')

    it 'will not  log in' do
      visit new_user_session_path
      fill_in 'Email', with: 'test@test.com'
      click_on 'Log in'
      expect(page).to_not have_content('the record')
    end
  end
end
