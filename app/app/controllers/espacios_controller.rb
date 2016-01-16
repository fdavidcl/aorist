class EspaciosController < ApplicationController
  private
  def espacio_params
    params.require(:espacio).permit(:multimedia, :enlace, :ancho, :alto)
  end
  
  def find_by_id
    Medio.find_by id: params[:medio_id]
  end
  
  public
  def index
    @medio = find_by_id
    @espacios = @medio.espacios
  end

  def new
    @medio = find_by_id
    @espacio = Espacio.new
  end

  def show
    @medio = find_by_id
    @espacio = Espacio.find_by id: params[:id]
  end

  def create
    @medio = find_by_id
    @espacio = @medio.espacios.create espacio_params

    if @espacio.save
      redirect_to medio_espacio_path params[:medio_id], @espacio.id
    else
      render :new
    end
  end

  def destroy
    @espacio = Espacio.find_by id: params[:id]
    @espacio.destroy

    redirect_to medio_espacios_path
  end

end
