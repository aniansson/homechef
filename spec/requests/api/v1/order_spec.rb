require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :request do
  let(:user) { FactoryGirl.create(:user) }
  let (:dish) { FactoryGirl.create(:dish) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { {HTTP_ACCEPT: 'application/json'}.merge!(credentials) }

  describe 'POST /v1/orders' do
    it 'should add a dish to order' do
      post '/api/v1/orders', params: {
        dish_id: dish.id }, headers: headers
      expect(response_json['message']).to eq "Successfully added #{dish.name}"
      expect(response.status).to eq 200
    end

    it 'should give error if dish is missing or invalid' do
      post '/api/v1/orders', params: {
          dish_id: dish.name }, headers: headers
      expect(response_json['message']).to eq "Something went wrong, you did not add a dish to your order"
      expect(response.status).to eq 422
    end

    it 'should give an error if header is missing' do
      post '/api/v1/orders', params: {
          dish_id: dish.id }, headers: nil
      expect(response_json['errors']).to eq ["Authorized users only."]
      expect(response.status).to eq 401
    end
  end
end