class Meal < ActiveRecord::Base
	has_many :components
	belongs_to :menu
	belongs_to :meal_lists

	validates :name, presence: true, confirmation: true, length: {in: 0..50, 
		message: "Must be between 0 and 50 characters."}
	validates :description, presence: true, length: {in: 0..250,
		message: "Must be between 0 and 250 characters."}
end