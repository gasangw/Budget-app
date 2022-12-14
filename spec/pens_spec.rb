require 'rails_helper'

RSpec.describe 'Pens', type: :request do
  describe 'GET /index' do
    before :each do
      get root_path
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders index template ' do
      expect(response).to render_template('index')
    end

    it 'page contains the correct text' do
      expect(response.body).to include('TomBudge')
    end
  end
end
