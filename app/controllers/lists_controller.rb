class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @restaurant.save
    redirect_to list_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
