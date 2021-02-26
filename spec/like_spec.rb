require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'validation' do
    it 'should not create the like' do
      expect(Like.create(article_id: 1)).to_not be_valid
    end
  end
end
