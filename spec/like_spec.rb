require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'validation' do
    it 'should not create the like' do
      expect(Like.create(article_id: 1)).to_not be_valid
    end
  end
end

RSpec.describe Like, type: :model do
  before(:each) do
    Category.create(id:5 ,name:"NBA Headlines",priority:7)
    Article.create(id: 1, author_id: 1, title: 'looking for more', body: 'the tenacity')
    
  end
  describe 'validation' do
    it 'should create the like' do
      expect(Like.create(article_id: 1, user_id: 1)).to be_valid
    end
  end
end
