<<<<<<< HEAD
class Meal < ActiveRecord::Base

	has_many :components
	belongs_to :menu
	belongs_to :meal_lists

<<<<<<< HEAD
	validates :name, presence: true, length: { 
		within: 0..50,
		wrong_length: "Must be between 0 and 50 characters." 
	}
	validates :description, presence: true, length: { 
		within: 0..250,
		wrong_length: "Must be between 0 and 250 characters." 
	}
=======
	validates :name, presence: true, confirmation: true, length: {in: 0..50}, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters"}
	validates :description, presence: true, length: {in: 0..150}
>>>>>>> testTwo
end
=======
class Meal < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_and_belongs_to_many :components
	belongs_to :menu
	belongs_to :meal_lists

	validates :name, presence: true, confirmation: true, length: {in: 0..50, 
		message: "Must be between 0 and 50 characters."}
	validates :description, presence: true, length: {in: 0..250,
		message: "Must be between 0 and 250 characters."}
end
>>>>>>> b3d05bd46e5162ebf208d3e30f9e14de868f8375
