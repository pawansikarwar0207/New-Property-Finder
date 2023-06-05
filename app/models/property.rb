class Property < ApplicationRecord
	belongs_to :user

	validates :name, :address, :price, :rooms, :bathrooms, presence: true

	has_many_attached :images

	scope :latest, -> { order created_at: :desc }

	scope :sold, -> { where(for_sale: true, status: "sold") }
	scope :for_sale, -> { where(for_sale: true, status: "available") }
	scope :leased, -> { where(for_sale: false, status: "leased") }
	scope :for_rent, -> { where( for_sale: false, status: "available") }

	has_rich_text :content

	
end
