require 'rails_helper'

RSpec.describe Article, type: :model do
    describe 'validation' do
        it 'should not create an article' do
         expect(Article.create(title:"all the way")).to_not be_valid
      end
    end
 end

 RSpec.describe Article, type: :model do
    before(:each) do
        User.create(id: 1, name: 'lamas', email: "test1@test.com",password:"password")
      end
    describe 'validation' do
        it 'should create an article' do
         expect(Article.create(author_id:1,title:"all the way",body:"the most epic entrance")).to be_valid
      end
    end
 end