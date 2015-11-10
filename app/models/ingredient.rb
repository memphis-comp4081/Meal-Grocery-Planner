class Ingredient < ActiveRecord::Base
	has_many :pantries
	validates :description, presence: true
	validates :unit_of_measure, presence: true
end
