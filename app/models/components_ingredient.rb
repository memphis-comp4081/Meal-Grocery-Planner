class ComponentsIngredient < ActiveRecord::Base
	belongs_to :component
	has_many :ingredient
end
