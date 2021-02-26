require 'rails_helper'

RSpec.describe 'Home', type: :feature do
  describe 'home page' do
    it 'shows the right content' do
      visit root_path
      expect(page).to have_content('please create a new article')
    end
  end
end
