class MediosController < ApplicationController
  private
  def medio_params
    params.require(:medio).permit(:nombre, :web, :fiscales)
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
