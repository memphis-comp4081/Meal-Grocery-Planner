class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pantries
  has_many :meal_lists
  has_one :data
  # to be changed based on the creation of other classes
  # has_one :meal_list
  has_many :menus
end
