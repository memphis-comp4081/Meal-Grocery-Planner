class DataController < ApplicationController
  def index
  	@datum=current_user.data
  end

  def edit
  	@datum = Datum.find(params[:new_datum])
  end
end
