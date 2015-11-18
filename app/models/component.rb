class Component < ActiveRecord::Base
	has_many :componentsingredients

	validates :description, presence: true
	validates :instructions, presence: true
end
