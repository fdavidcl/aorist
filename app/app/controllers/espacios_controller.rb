class EspaciosController < ApplicationController
  private
  def espacio_params
    params.require(:espacio).permit(:multimedia, :enlace, :ancho, :alto)
  end

  public
  def index
    @medio = Medio.find_by :id => params[:medio_id]
    @espacios = @medio.espacios
  end

  def new
    @medio = Medio.find_by :id => params[:medio_id]
    @espacio = Espacio.new
  end

  def show

  end

  def create
    @espacio = Espacio.new espacio_params
  end

  def destroy
    @espacio = Espacio.find params[:id]
    @espacio.destroy

    redirect_to espacios_path
  end

end
