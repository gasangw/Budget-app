require 'rails_helper'

RSpec.describe User, Type: :model do
  before(:each) do
    @user = User.create(name: 'Thomas')
  end

  describe 'it should have valid values' do
    it 'the name should be present' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
  end
end
