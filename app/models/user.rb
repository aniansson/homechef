class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable

  has_many :orders
  has_many :dishes

  acts_as_mappable lat_column_name: :lat,
                   lng_column_name: :lng,
                   default_units: :kms
end
