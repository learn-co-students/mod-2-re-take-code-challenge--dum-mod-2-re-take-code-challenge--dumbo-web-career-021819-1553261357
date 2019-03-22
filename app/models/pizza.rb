class Pizza < ApplicationRecord
validates :name, uniqueness: true
  belongs_to :restaurant
end
