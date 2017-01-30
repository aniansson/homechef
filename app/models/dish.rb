class Dish < ApplicationRecord
  validates_presence_of :name, :description, :price, :ready_time, :portions, presence: true

  acts_as_mappable lat_column_name: :lat,
                   lng_column_name: :lng,
                   default_units: :kms
end
