class Component < ActiveRecord::Base
	has_many :components_ingredients
	belongs_to :meal

	validates :description, presence: true
	validates :instructions, presence: true
end