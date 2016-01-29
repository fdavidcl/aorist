class AnunciosController < ApplicationController
  layout "with_side", except: [:index]
  helper_method :current_anunciante, :espacios_permitidos, :separar_anuncios

  private
  def anuncio_params
    params.require(:anuncio).permit(:contenido, :URL)
  end

  def current_anunciante
    Anunciante.find_by! id: params[:anunciante_id]
  end

  def separar_anuncios
    # Agrupa los anuncios según estén o no asignados a espacios
    current_anunciante.anuncios.find_each.partition { |a| a.espacios.empty? }
  end

  def espacios_permitidos anuncio
    if anuncio.URL.empty?
      Espacio.find_each.reject &:anuncio
    else
      Espacio.find_each.select {|e| e.anuncio.nil? && e.enlace}
    end
  end

  public
  def index
  end

  def new
    @anuncio = Anuncio.new
  end

  def show
    @anuncio = Anuncio.find params[:id]
  end

  def create
    @anuncio = Anuncio.new anuncio_params

    if @anuncio.save
      current_anunciante.anuncios << @anuncio
      redirect_to anunciante_anuncio_path params[:anunciante_id], @anuncio.id
    else
      render :new
    end
  end

  def destroy
    @anuncio = Anuncio.find_by! id: params[:id]
    @anuncio.destroy

    redirect_to anuncios_path
  end

  def allocate_to
    @anuncio = Anuncio.find_by! id: params[:id]
    @espacio = Espacio.find_by! id: params[:espacio_id]
    @anuncio.espacios << @espacio unless @espacio.nil?

    redirect_to anunciante_anuncio_path
  end

  def deallocate_from
    @anuncio = Anuncio.find_by! id: params[:id]
    @espacio = Espacio.find_by! id: params[:espacio_id]
    @anuncio.espacios.delete @espacio

    redirect_to anunciante_anuncio_path
  end
end
