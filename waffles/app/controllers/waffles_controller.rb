class WafflesController < ApplicationController

  def list
    @waffles = Waffle.where(active: true).order("created_at desc")
  end

  def detail
    @waffle = Waffle.find params[:id]
  end

  def new
    @waffle = Waffle.new
  end

  def create
    # @waffle = Waffle.new
    # @waffle.name = params[:waffle][:name]
    # @waffle.photo = params[:waffle][:photo]
    # @waffle.active = params[:waffle][:active]
    # @waffle.toppings = params[:waffle][:toppings]
    # @waffle.save

    @waffle = Waffle.new params.require(:waffle).permit(:name, :photo, :active, :toppings)
    if @waffle.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @waffle = Waffle.find params[:id]
  end

  def update
    @waffle = Waffle.find params[:id]
    if @waffle.update params.require(:waffle).permit(:name, :photo, :active, :toppings)
      redirect_to root_path
    else
      render :edit
    end
  end

  def delete
    @waffle = Waffle.find params[:id]
    @waffle.destroy
    redirect_to root_path
  end
end
