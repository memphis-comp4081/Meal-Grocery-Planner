class Component < ActiveRecord::Base
	has_many :components_ingredients

	validates :description, presence: true
	validates :instructions, presence: true
end
