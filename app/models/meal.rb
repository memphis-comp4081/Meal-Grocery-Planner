class Meal < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_and_belongs_to_many :components
	belongs_to :menu
	belongs_to :meal_lists

	validates :name, presence: true, confirmation: true, length: {in: 0..50, 
		message: "Must be between 0 and 50 characters."}
	validates :description, presence: true, length: {in: 0..250,
		message: "Must be between 0 and 250 characters."}
end

