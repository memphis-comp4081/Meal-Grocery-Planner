class Component < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :components_ingredients
	has_and_belongs_to_many :meals

	validates :description, presence: true
	validates :instructions, presence: true
end