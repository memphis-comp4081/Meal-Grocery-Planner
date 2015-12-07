class DataController < ApplicationController
  def index
  	@datum=current_user.data
  end

  def edit
  	@datum = Data.find(params[:new_datum])
  end
end
