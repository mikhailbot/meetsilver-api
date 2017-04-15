require 'rails_helper'

RSpec.describe VotesController, :type => :controller do
  describe 'POST #create' do
    context 'with an existing event' do
      let(:event) { create(:event) }
      let(:vote_attributes) { attributes_for(:vote, :option_id => event.options.first.id) }

      before(:each) do
        post :create, params: { vote: vote_attributes }
      end

      it 'responds with 201 status' do
        expect(response.status).to eq 201
      end

      it 'responds successfully with a new vote' do
        expect_json_types(id: :int)
        expect_json_types(name: :string)
        expect_json_types(option_id: :int)
      end
    end
  end
end
