class ComponentsController < ApplicationController
  def create
  	
  end

  def index
  	@components = Components.all
  end

  def delete
  end
end
