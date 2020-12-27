require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  describe 'validation' do
    it 'should not create the articlecategory' do
      expect(ArticleCategory.create(article_id: 1)).to_not be_valid
    end
  end
end


RSpec.describe ArticleCategory, type: :model do
  describe 'validation' do
    let(:article){Article.create(id:3,title: 'all the way',body:"making it count",image:"myurl",category_id:2,author_id:3)}
    let(:category){Category.create(id:5 ,name:"NBA Headlines",priority:7)}
    it 'should create the articlecategory' do
      article.save
      category.save
      expect(ArticleCategory.create(article_id: 3,category_id:5)).to be_valid
    end
  end
end