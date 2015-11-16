class Meal < ActiveRecord::Base

	has_many :components
	belongs_to :menu
	belongs_to :meal_lists

	validates :name, presence: true, length: { 
		within: 0..50,
		wrong_length: "Must be between 0 and 50 characters." 
	}
	validates :description, presence: true, length: { 
		within: 0..250,
		wrong_length: "Must be between 0 and 250 characters." 
	}
end
