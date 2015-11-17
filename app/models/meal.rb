class Meal < ActiveRecord::Base

	has_many :components
	belongs_to :menu
	belongs_to :meal_lists

	validates :name, presence: true, confirmation: true, length: {in: 0..50}, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters"}
	validates :description, presence: true, length: {in: 0..150}
end
