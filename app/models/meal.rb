class Meal < ActiveRecord::Base
<<<<<<< HEAD
	has_many :Components
	belongs_to :Menu
	belongs_to :Meallist

	validates :name, presence: true
	validates :description, presence: true
	validates :component_id, presence: true
=======
>>>>>>> a06c42ea39cc50ffbdc41c6df1efa04d8dccea72
end
