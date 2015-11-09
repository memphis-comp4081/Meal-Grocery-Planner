class User < ActiveRecord::Base
	has_many :pantries
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
end
