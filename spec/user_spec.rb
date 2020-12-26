require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    it 'should not create an user' do
      expect(User.create(email: 'luffy@onepice.com')).to_not be_valid
    end
  end
end

RSpec.describe Article, type: :model do
  describe 'validation' do
    it 'should create an use' do
      expect(User.create(name: 'cvilla', email: 'cvilla@villa.com', password: 'password')).to be_valid
    end
  end
end
