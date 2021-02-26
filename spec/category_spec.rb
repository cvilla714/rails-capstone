require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validation' do
    it 'should not create the category' do
      expect(Category.create(name: 'the biggest night')).to_not be_valid
    end
  end
end

RSpec.describe Category, type: :model do
  describe 'validation' do
    it 'should create the category' do
      expect(Category.create(name: 'the biggest night', priority: 7)).to be_valid
    end
  end
end
