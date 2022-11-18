class Company < ApplicationRecord
  validates :registry_number, uniqueness: true
  validates :registry_number, :name, :city, presence: true
end
