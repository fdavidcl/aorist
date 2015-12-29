class EspaciosController < ApplicationController
  def index
    @medio = Medio.find_by :id => params[:medio_id]
    @espacios = Espacio.where :medio => params[:medio_id]
  end
end
