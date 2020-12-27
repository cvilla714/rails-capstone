require 'rails_helper'

RSpec.describe 'Register', type: :feature do
  describe 'home page' do
    let(:category) { Category.create!(name: 'NBA Headlines', priority: 7) }

    it 'will log in' do
      visit new_user_registration_path
      fill_in 'Email', with: 'test12@test.com'
      fill_in 'Name', with: 'test13'
      click_on 'Sign up'
      visit new_article_path
      fill_in 'Title', with: 'the moon is shining'
      fill_in 'Body', with: 'looking sharp tonight'
      fill_in 'Please provide a url for the image field', with: 'therock'
      click_on 'NBA eadlines', :from.exact
      clicn_on 'Create Article'
      expect(page).to have_content('Article was successfully created.')
    end
  end
end
