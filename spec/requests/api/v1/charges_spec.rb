require 'rails_helper'

RSpec.describe Api::V1::ChargesController, type: :request do
  let(:user) { FactoryGirl.create(:user) }
  let (:dish) { FactoryGirl.create(:dish) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { {HTTP_ACCEPT: 'application/json'}.merge!(credentials) }

  before do
    @order = Order.create(user: user)
    @order.add(dish, dish.price)
  end

  describe 'POST /v1/charges' do
    it 'should charge users card' do
      post '/api/v1/charges', params: {
        email: user.email,
        source: 'hello',
        order_id: @order.id
      }, headers: headers
      response = { status: 'success', message: 'Thank you for your order <3', order_items:
        [{ name: dish.name, price: dish.price,
        ready_time: dish.ready_time}], total: @order.total.to_i*100 }
      expect(response_json).to eq response
      expect(response.status).to eq 200
    end
  end
end
