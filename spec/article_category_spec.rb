require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  describe 'validation' do
    it 'should not create the category' do
      expect(ArticleCategory.create(article_id: 1)).to_not be_valid
    end
  end
end
