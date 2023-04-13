require 'rails_helper'

RSpec.describe GeneratorsController, type: :controller do
  describe 'GET #index' do
    it 'renders the generators/index template' do
      get :index
      expect(response).to render_template('generators/index')
    end

    it 'returns a successful HTTP status code' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
