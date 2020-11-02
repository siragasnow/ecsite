class Delivery < ApplicationRecord
	belongs_to :customer

  	validates :postal_code, presence: true, format: { with: /\A\d{7}\z/ }
  	validates :destination, presence: true
  	validates :name, presence: true
end
