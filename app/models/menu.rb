class Menu < ActiveRecord::Base
	belongs_to :meal
	validate :meal_date_cannot_be_in_the_past
 
  def meal_date_cannot_be_in_the_past
    if time.present? && time < DateTime.now()
      errors.add(:time, "can't be in the past")
    end
  end
end
