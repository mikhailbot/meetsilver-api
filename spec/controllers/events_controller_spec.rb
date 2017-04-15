require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
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
      expect_json(title: event.title)
      expect_json(location: event.location)
      expect_json(slug: event.slug)
      expect_json_types(options: :array_of_objects)
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
        expect_json_types(id: :int)
        expect_json_types(title: :string)
        expect_json_types(location: :string)
        expect_json_types(slug: :string)
        expect_json_types(options: :array_of_objects)
      end

    end
  end
end
