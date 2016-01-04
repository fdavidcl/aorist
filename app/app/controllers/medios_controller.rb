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
<<<<<<< HEAD
  
  def destroy 
    @medio = Medio.find_by id: params[:id]
=======

  def destroy
    @medio = Medio.find params[:id]
>>>>>>> f5860d7e555053c8f8badc745d9f796e383091ae
    @medio.destroy

    redirect_to medios_path
<<<<<<< HEAD
  end 
  
  def asociate_audience
    @audience = Audience.find_by id: params[:audience_id]
    @medio = Medio.find_by id: params[:id]
    @medio.audiences << @audience  
=======
  end

  def associate_audience
    @audience = Audience.find params[:audience_id]
    @medio = Medio.find params[:id]
    @medio.audiences << @audience
>>>>>>> f5860d7e555053c8f8badc745d9f796e383091ae
  end

end
