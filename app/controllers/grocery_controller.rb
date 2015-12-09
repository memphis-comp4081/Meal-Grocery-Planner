class GroceryController < ApplicationController

	#added to require login before pantry is shown.
	before_action :authenticate_user!

	def index
		@sql = "SELECT 
					i.description,
					i.unit_of_measure,
					SUM(ci.quantity) as quantity_needed,
					CASE WHEN p.quantity is null THEN 0 ELSE p.quantity END AS quantity_pantry
				FROM
					Menus m
					INNER JOIN Meals me on m.Meal_ID = me.ID
					INNER JOIN Components_Meals cm on me.ID = cm.Meal_ID
					INNER JOIN Components c on cm.Component_ID = c.ID
					INNER JOIN Components_Ingredients ci on c.ID = ci.Component_ID
					INNER JOIN Ingredients i on ci.Ingredient_ID = i.ID
					LEFT JOIN Pantries p on i.ID = p.Ingredient_ID
						AND p.User_ID = m.User_ID
				WHERE 
					m.User_ID = " + current_user.id.to_s + "
					AND (p.User_ID is null  OR p.User_ID = " + current_user.id.to_s + ")
				GROUP BY
					i.description,
					i.unit_of_measure,
					p.quantity
				HAVING
					SUM(ci.quantity) > CASE WHEN p.quantity is null THEN 0 ELSE p.quantity END"
		@grocery = ActiveRecord::Base.connection.execute(@sql)
	end
end
