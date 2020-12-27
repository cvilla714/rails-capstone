require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validation' do
    it 'should not create an article' do
      expect(Article.create(title: 'all the way')).to_not be_valid
    end
  end
end

RSpec.describe Article, type: :model do
  describe 'validation' do
    let(:author){User.create(id:3,name:"testing",email:"testing14@test.com",password:"password")} 
    it 'should not create an article' do
      author.save
      expect(Article.create(id:3,title: 'all the way',body:"making it count",image:"myurl",category_id:2,author_id:3)).to be_valid
    end
  end
end
