require 'rails_helper'

RSpec.describe 'Register', type: :feature do
  describe 'home page' do
    it 'will log in' do
      visit new_user_registration_path
      fill_in 'Email', with: 'test12@test.com'
      fill_in 'Name', with: 'test13'
      click_on 'Sign up'
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end
  end
end

RSpec.describe 'Register', type: :feature do
  describe 'home page' do
    it 'will log in' do
      visit new_user_registration_path
      fill_in 'Email', with: 'test12@test.com'
      click_on 'Sign up'
      expect(page).to_not have_content('Welcome! You have signed up successfully.')
    end
  end
end
