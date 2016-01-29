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
    @medios = Medio.where disabled: false
    @medio = Medio.find_by id: params[:id]

    @lista_audiences_asociables = if @medio.audiences.empty?
      Audience.all
    else
      Audience.where('nombre NOT IN (?)', @medio.audiences.pluck(:nombre))
    end
  end

  def index
    @medios = Medio.where disabled: false
  end


  def destroy
    @medio = Medio.find_by id: params[:id]
    @medio.disabled = true
    @medio.espacios.destroy

    redirect_to medios_path
  end

  def associate_audience
    @audience = Audience.find_by id: params[:audience_id]
    @medio = Medio.find_by id: params[:id]
    @medio.audiences << @audience unless @medio.audiences.member? @audience

    redirect_to @medio
  end

  def dissociate_audience
    @audience = Audience.find_by id: params[:audience_id]
    @medio = Medio.find_by id: params[:id]
    @medio.audiences.delete @audience

    redirect_to @medio
  end


end
