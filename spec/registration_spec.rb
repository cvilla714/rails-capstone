require 'rails_helper'

RSpec.feature 'Users', type: :feature do
    before :each do
      User.create(id: 2, name: 'Marcelo', username: 'marcelomaidden')
      Article.create(id: 1, author_id: 2, title: 'First article',
                     text: 'Beautiful article made by Marcelo in order to test the code',
                     image: 'url for the image')
      ArticleCategory.create(article_id: 1, category_id: 1)
    end
  

context 'Register' do
  it 'Creates a new user' do
    visit '/users/new'
    fill_in 'user_name', with: 'Marcelo'
    fill_in 'user_username', with: 'marcelomaidden'
    click_on('Create User')

    expect(page).to have_text 'User successfully created'
  end
end