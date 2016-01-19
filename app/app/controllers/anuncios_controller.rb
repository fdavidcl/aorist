class AnunciosController < ApplicationController
  layout "with_side", except: [:index]

  private
  def anuncio_params
    params.require(:anuncio).permit(:contenido, :URL)
  end

  def find_by_id
    Anunciante.find_by id: params[:anunciante_id]
  end

  def separar_anuncios
    # Agrupa los anuncios según estén o no asignados a espacios
    find_by_id.anuncios.find_each.partition { |a| a.espacios.empty? }
  end

  public
  def index
    @anunciante = find_by_id
    @pendientes, @en_marcha = separar_anuncios
  end

  def new
    @anunciante = find_by_id
    @pendientes, @en_marcha = separar_anuncios
    @anuncio = Anuncio.new
  end

  def show
    @anunciante = find_by_id
    @pendientes, @en_marcha = separar_anuncios
    @anuncio = Anuncio.find params[:id]

    # Buscamos los espacios que no tienen aún un anuncio asignado
    @espacios_libres = Espacio.find_each.reject &:anuncio
  end

  def create
    @anunciante = find_by_id
    @pendientes, @en_marcha = separar_anuncios
    @anuncio = @anunciante.anuncios.create anuncio_params

    if @anuncio.save
      redirect_to anunciante_anuncio_path params[:anunciante_id], @anuncio.id
    else
      render :new
    end
  end

  def destroy
    @anuncio = Anuncio.find_by id: params[:id]
    @anuncio.destroy

    redirect_to anuncios_path
  end

  def allocate_to
    @anuncio = Anuncio.find_by id: params[:id]
    @espacio = Espacio.find_by id: params[:espacio_id]
    @anuncio.espacios << @espacio unless @espacio.nil?

    redirect_to anunciante_anuncio_path
  end

  def deallocate_from
    @anuncio = Anuncio.find_by id: params[:id]
    @espacio = Espacio.find_by id: params[:espacio_id]
    @anuncio.espacios.delete @espacio

    redirect_to anunciante_anuncio_path
  end
end
