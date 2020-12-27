require 'rails_helper'

RSpec.describe 'Home', type: :feature do
  describe 'home page' do
    it 'shows the right content' do
      visit root_path
      expect(page).to have_content('please create a new article')
    end
  end
end

RSpec.describe 'Home', type: :feature do
  describe 'home page' do
    User.create(id: 3, email: 'test@test.com', name: 'testing', password: 'password')

    it 'will log in' do
      visit new_user_session_path
      fill_in 'Email', with: 'test@test.com'
      click_on 'Log in'
      expect(page).to have_content('Signed in successfully')
    end
  end
end
