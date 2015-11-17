class Ingredient < ActiveRecord::Base
	has_many :pantries
	has_many :components_ingredients

	validates :description, presence: true
	validates :unit_of_measure, presence: true
end
