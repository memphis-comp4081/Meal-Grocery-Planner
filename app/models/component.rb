class Component < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :components_ingredients
	belongs_to :meal

	validates :description, presence: true
	validates :instructions, presence: true
end