require 'rails_helper'

RSpec.describe Api::V1::DishesController, type: :request do
  describe 'GET /v1/dishes' do
    it 'should return all the dishes' do
      FactoryGirl.create(:dish)
      get '/api/v1/dishes'
      expect(response.status).to eq 200
      expect(response_json['entries'].first['name']).to eq "Pizza"
    end
  end
end