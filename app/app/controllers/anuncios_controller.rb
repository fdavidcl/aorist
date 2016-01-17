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
    @anuncio = Anuncio.new
  end

  def show
    @anunciante = find_by_id
    @anuncio = Anuncio.find params[:id]
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

end
