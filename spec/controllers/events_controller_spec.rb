require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
  describe 'GET #index' do
    before(:each) do
      create_list(:event, 3)
      get :index
    end

    it 'responds successfully with an HTTP 200 status code' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'responds successfully with 3 events' do
      expect(JSON.parse(response.body).count).to be 3
    end
  end

  describe 'GET #show' do
    let(:event) { create(:event) }
    before(:each) do
      get :show, params: { slug: event.slug }
    end

    it 'responds successfully with an HTTP 200 status code' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'responds successfully with the correct event' do
      expect(response.body).to include event.title
    end
  end

  describe 'POST #create' do
    context 'with valid event and option attributes' do
      let(:event_attributes) { attributes_for(:event) }

      before(:each) do
        post :create, params: { event: event_attributes }
      end

      it 'responds with 201 status' do
        expect(response.status).to eq 201
      end

      it 'responds with new post' do
        expect(JSON.parse(response.body)).to include 'id'
      end

    end
  end
end
