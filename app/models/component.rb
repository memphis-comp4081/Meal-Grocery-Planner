class Component < ActiveRecord::Base
	belongs_to :ingredient

	validates :description, presence: true
	validates :instructions, presence: true
end
