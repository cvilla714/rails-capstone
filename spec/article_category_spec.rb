require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  describe 'validation' do
    let!(:author) { User.create(name: 'John Doe') }
    let!(:article) do
      Article.create(title: 'all the way', body: 'making it count', image: 'myurl', category_id: 2, author:)
    end
    let!(:category) { Category.create(name: 'NBA Headlines', priority: 7) }

    it 'should not create the articlecategory' do
      expect(ArticleCategory.create(article:)).not_to be_valid
    end

    it 'should create the articlecategory' do
      expect(ArticleCategory.create(article:, category:)).to be_valid
    end
  end
end
