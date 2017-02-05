require 'rails_helper'

RSpec.describe Dish, type: :model do

  describe "DB tables" do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :ready_time }
    it { is_expected.to have_db_column :portions }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :ready_time }
    it { is_expected.to validate_presence_of :portions }
    it { is_expected.to validate_presence_of :user }
  end

  describe "Associations" do
    it { is_expected.to belong_to :user }
  end

  describe "Factory" do
    it 'should have a valid factory' do
      expect(FactoryGirl.create(:dish)).to be_valid
    end
  end
end
