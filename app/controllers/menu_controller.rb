require 'date'
class MenuController < ApplicationController

	#added to require login before pantry is shown.
	before_action :authenticate_user!

	def index
		begin
			@menu =current_user.menus.all() 	#where('time Between "' +  DateTime.now().to_s(:db)+ '" AND "' + (DateTime.now()+1).to_s(:db)+'"').find_each
		rescue
			@menu = false
		end
		for x in current_user.menus
			puts(x.time)
		end
		puts(DateTime.now())
		puts(current_user.menus)
	end

	def add
		@meal_list = current_user.meal_lists
		@menu = Menu.new
	end

	def create
		if(params[:date]=~/\d?\d\/\d?\d\/\d\d/)
			date = DateTime.strptime(params[:date], '%m/%d/%y')
		else
			flash[:alert] = "Please put a date in the format dd/mm/yy"
		end

		if(date and params[:time]=~/\d\d?:\d\d/)
			hours = params[:time].split(":")[0]
			minutes = params[:time].split(":")[1]
			offset = 12*params[:time_offset].to_i
			hours = hours.to_i
			hours = (hours +offset).hour
			minutes = minutes.to_i.minute
			date = date + minutes + hours
			meal=  Meal.find(params[:meal_select])
			menu = Menu.create(time: date, meal:meal)
			menu.save

			current_user.menus.push(menu)


			redirect_to menu_url
		elsif(date)
			meal=  Meal.find(params[:meal_select])
			menu = Menu.create(time: date, meal:meal)
			menu.save

			current_user.menus.push(menu)

			redirect_to menu_url

		else
			if !flash[:alert]
				flash[:alert] = "  Time must be in HH:MM format!"
			else
				flash[:alert] += "  Time must be in HH:MM format!"
			end
			puts("@errors")
			redirect_to menu_add_url
		end

	end
end