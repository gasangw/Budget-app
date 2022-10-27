require 'rails_helper'

require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
  
    @user = User.create!(name: 'Thomas', password: '12345566778', email: 'tomas@gmail.com')
    @group = @user.groups.create(name: 'Vox Wagen', icon: 'https://icon.com/pic.jpg')
    sign_in @user
  end

  context 'GET /index : ' do
    before do
        @user.save
    it 'returns http success' do
      get group_index_path
      expect(response).to have_http_status(:success)
    end
    end
  end
end