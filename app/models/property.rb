class Property < ApplicationRecord
	belongs_to :user

	validates :name, :address, :price, :rooms, :bathrooms, presence: true

	has_many_attached :images
end
