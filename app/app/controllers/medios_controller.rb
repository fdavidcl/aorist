class MediosController < ApplicationController
  private
  def medio_params
    params.require(:medio, :nombre).permit(:web, :fiscales)
  end

  public
  def new
    @medio = Medio.new
  end

  def create
    @medio = Medio.new medio_params

    if @medio.save
      redirect_to @medio
    else
      render :new
    end
  end

  def show
    @medio = Medio.find params[:id]
  end

  def index
    @medios = Medio.all
  end
end
