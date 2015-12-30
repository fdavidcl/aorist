class EspaciosController < ApplicationController
  private
  def espacio_params
    params.require(:espacio).permit(:multimedia, :enlace, :ancho, :alto)
  end

  public
  def index
    @medio = Medio.find_by :id => params[:medio_id]
    @espacios = Espacio.where :medio => params[:medio_id]
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
end
