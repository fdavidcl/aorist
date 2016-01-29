class MediosController < ApplicationController
  layout "with_side", except: [:index]
  helper_method :medios

  private
  def medio_params
    params.require(:medio).permit(:nombre, :web, :fiscales)
  end

  def medios
    Medio.where disabled: false
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
    @medio = Medio.find_by! id: params[:id]

    @lista_audiences_asociables = if @medio.audiences.empty?
      Audience.all
    else
      Audience.where('nombre NOT IN (?)', @medio.audiences.pluck(:nombre))
    end
  end

  def index
  end


  def destroy
    @medio = Medio.find_by! id: params[:id]
    @medio.disabled = true
    @medio.save
    @medio.espacios.destroy

    redirect_to medios_path
  end

  def associate_audience
    @audience = Audience.find_by! id: params[:audience_id]
    @medio = Medio.find_by! id: params[:id]
    @medio.audiences << @audience unless @medio.audiences.member? @audience

    redirect_to @medio
  end

  def dissociate_audience
    @audience = Audience.find_by! id: params[:audience_id]
    @medio = Medio.find_by! id: params[:id]
    @medio.audiences.delete @audience

    redirect_to @medio
  end


end
