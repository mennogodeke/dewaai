class ShipsController < ApplicationController
  skip_before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)

    if @ship.save
    redirect_to @ship
    else
      render 'new'
    end
  end

  def edit
    @ship = Ship.find(params[:id])
  end

  def update
    @ship = Ship.find(params[:id])
    @ship.update(ship_params)
    redirect_to @ship
  end

  def destroy
    @ship = Ship.find(params[:id])
    @ship.destroy

    redirect_to ships_path
  end

  private
    def ship_params
      params.require(:ship).permit(:name, :damaged, :design_id)
    end
end
