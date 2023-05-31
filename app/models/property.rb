class Property < ApplicationRecord
	belongs_to :user

	validates :name, :address, :price, :rooms, :bathrooms, presence: true

	has_many_attached :images

	scope :latest, -> { order created_at: :desc }

	has_rich_text :content

	
end
