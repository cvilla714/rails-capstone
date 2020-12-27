require 'rails_helper'

RSpec.describe 'Home', type: :feature do
  before :each do
    User.create(id: 2, name: 'zoro', email: 'zorro@test.com', password: 'password')
    Category.create(name: 'Soccer News', priority: 1)
    Article.create(
      author_id: 1,
      title: 'moving forward',
      body: 'making progress',
      image: 'https://e0.365dm.com/20/03/2048x1152/skysports-arsenal-olympiakos_4944696.jpg'
    )
    ArticleCategory.create(article_id: 1, category_id: 2)
    Like.create(article_id: 1, user_id: 2)
  end
  describe 'home page' do
    it 'shows the right content' do
      puts Article.first.title
      puts Article.first.image
      visit root_path
      expect(page).to have_content('Articles')
    end
  end
end
