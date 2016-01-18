class MediosController < ApplicationController
  layout "with_side", except: [:index]

  private
  def medio_params
    params.require(:medio).permit(:nombre, :web, :fiscales)
  end

  public
  def new
    @medios = Medio.all
    @medio = Medio.new
  end

  def create
    @medios = Medio.all
    @medio = Medio.new medio_params

    if @medio.save
      redirect_to @medio
    else
      render :new
    end
  end

  def show
    @medios = Medio.all
    @medio = Medio.find_by id: params[:id]
  end

  def index
    @medios = Medio.all
  end


  def destroy
    @medio = Medio.find_by id: params[:id]
    @medio.destroy

    redirect_to medios_path
  end

  def asociate_audience
    @audience = Audience.find_by id: params[:audience_id]
    @medio = Medio.find_by id: params[:id]
    @medio.audiences << @audience
  end


end
