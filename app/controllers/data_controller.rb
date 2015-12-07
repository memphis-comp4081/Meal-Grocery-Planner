class DataController < ApplicationController
  def index
  	@datum=current_user.datum
  end

  def edit
  	@datum =current_user.Datum.find(params[:id])
  end

  def create
    @datum = Datum.new(params_datum)
    # @meal.components.push(@component)
    if @datum.save
      redirect_to info_path
    end
  end

  def params_datum
  	params.require(:datum).permit(:f_name,:l_name)
  end
end
