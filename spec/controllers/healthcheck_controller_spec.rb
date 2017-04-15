require 'rails_helper'

RSpec.describe HealthcheckController, :type => :controller do
  describe 'GET #alive' do
    before do
      get :alive
    end

    it 'responds successfully with an HTTP 200 status code' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect_json(alive: true)
    end
  end
end
