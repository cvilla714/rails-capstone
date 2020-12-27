require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validation' do
    it 'should not create an article' do
      expect(Article.create(title: 'all the way')).to_not be_valid
    end
  end
end

