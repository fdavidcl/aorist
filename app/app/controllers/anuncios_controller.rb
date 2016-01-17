class AnunciosController < ApplicationController
  layout "with_side", except: [:index]

  private
  def anuncio_params
    params.require(:anuncio).permit(:contenido, :URL)
  end

  def find_by_id
    Anunciante.find_by id: params[:anunciante_id]
  end

  public
  def index
    @anunciante = find_by_id
    @anuncios = @anunciante.anuncios
  end

  def new
    @anunciante = find_by_id
    @anuncios = @anunciante.anuncios
    @anuncio = Anuncio.new
  end

  def show
    @anunciante = find_by_id
    @anuncios = @anunciante.anuncios
    @anuncio = Anuncio.find params[:id]
    espacios_libres = Espacio.where(
      "NOT EXISTS (SELECT * FROM 'anuncio_allocations' WHERE 'anuncio_allocations'.'espacio_id' = 'espacios'.'id')",
    )

    @available_espacio_pairs = if espacios_libres.empty?
        []
      else
        espacios_libres.collect do |e|
          ["Espacio #{e.id} (#{e.medio.nombre})", e.id]
        end
      end
  end

  def create
    @anunciante = find_by_id
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
    @anuncio.espacios << @espacio unless @anuncio.espacios.find_by id: params[:espacio_id]

    redirect_to anunciante_anuncio_path
  end

  def deallocate_from
    @anuncio = Anuncio.find_by id: params[:id]
    @espacio = Espacio.find_by id: params[:espacio_id]
    @anuncio.espacios.delete @espacio

    redirect_to anunciante_anuncio_path
  end
end
