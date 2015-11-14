class Meal < ActiveRecord::Base
	has_many :Components
	belongs_to :Menu
	belongs_to :Meallist

	validates :name, presence: true
	validates :description, presence: true
	validates :component_id, presence: true
end
