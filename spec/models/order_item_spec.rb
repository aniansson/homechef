require 'rails_helper'

RSpec.describe OrderItem, type: :model do

  describe "DB tables" do
    it { is_expected.to have_db_column :owner_id }
    it { is_expected.to have_db_column :owner_type }
    it { is_expected.to have_db_column :quantity }
    it { is_expected.to have_db_column :item_id }
    it { is_expected.to have_db_column :item_type }
    it { is_expected.to have_db_column :price_cents }
    it { is_expected.to have_db_column :price_currency }
  end

  describe "Actions" do
    it { is_expected.to respond_to :owner }
    it { is_expected.to respond_to :quantity }
    it { is_expected.to respond_to :item }
    it { is_expected.to respond_to :price }
  end

  describe "Associations" do
    it { is_expected.to belong_to :item }
  end
end
