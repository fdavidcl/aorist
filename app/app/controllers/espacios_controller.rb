class EspaciosController < ApplicationController
  def index
    @espacios = Espacios.all
  end

  def por_medio id_medio
    @espacios = Espacios.where :medio => id_medio
  end
end
