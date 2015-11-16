class Meal < ActiveRecord::Base
	has_many :components
	belongs_to :menu
	belongs_to :meal_lists

	validates :name, presence: true
	validates :description, presence: true
end
