require 'rails_helper'

RSpec.describe Order, type: :model do

  describe "Actions" do
    it { is_expected.to respond_to :add }
    it { is_expected.to respond_to :items? }
    it { is_expected.to respond_to :total }
    it { is_expected.to respond_to :subtotal }
    it { is_expected.to respond_to :remove }
    it { is_expected.to respond_to :taxes }
    it { is_expected.to respond_to :clear }
    it { is_expected.to respond_to :quantity_for }
    it { is_expected.to respond_to :price_for }
    it { is_expected.to respond_to :update_quantity_for }
    it { is_expected.to respond_to :update_price_for }

    let!(:product_1) { FactoryGirl.create(:dish, name: 'Hamburger', price: 4000) }
    let!(:product_2) { FactoryGirl.create(:dish, name: 'Pizza', price: 1000) }

    it 'calculates subtotal' do
      subject.save!
      subject.add(product_1, product_1.price, 2)
      expect(subject.subtotal.to_i).to eq (product_1.price * 2).to_i
    end
  end

  describe "Associations" do
    it { is_expected.to have_many :shopping_cart_items }
  end
end
