class Ingredient < ActiveRecord::Base
	has_many :pantries
	
	before_action :authenticate_

	validates :description, presence: true
	validates :unit_of_measure, presence: true
end
