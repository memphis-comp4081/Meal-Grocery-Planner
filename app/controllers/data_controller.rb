class DataController < ApplicationController
 
  def update
    @data = Data.find(params_data)
    @data.save!
    redirect_to info_edit_path
  end

  def add
    @data=Data.new
  end

  def edit
  	@data =current_user.Data.find(params[:id])
  end

  def create
    @data = Data.new(params_data)
    # @meal.components.push(@component)
    if params_data.blank
      params_data=''
      @data=Data.new(params_data)
      @data.save
    else
      @data.save
    end
  end

  def params_data
  	params.require(:data).permit(:f_name,:l_name)
  end
end
