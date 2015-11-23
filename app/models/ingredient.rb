class Ingredient < ActiveRecord::Base
	has_many :pantries
	has_many :components_ingredients

	validates :description, presence: true, length: { 
		within: 0..50,
		wrong_length: "Must be between 0 and 250 characters." 
	}
	validates :unit_of_measure, presence: true, length: { 
		within: 0..25,
		wrong_length: "Must be between 0 and 250 characters." 
	}
end
