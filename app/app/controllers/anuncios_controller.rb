class AnunciosController < ApplicationController

  private
  def anuncio_params
    params.require(:anuncio).permit(:contenido, :URL)
  end

  public
  def index
    @anunciante = Anunciante.find_by id: params[:anunciante_id]
    @anuncios = @anunciante.anuncios
  end

  def new
    @anunciante = Anunciante.find_by id: params[:anunciante_id]
    @anuncio = Anuncio.new
  end

  def show
    @anunciante = Anunciante.find_by id: params[:anunciante_id]
    @anuncio = Anuncio.find params[:id]
  end

  def create
    @anunciante = Anunciante.find_by id: params[:id]
    @anuncio = @anunciante.anuncios.create anuncio_params
    
    if espacio.save
      redirect_to manunciante_anuncio_path params[:anunciante_id], @anuncio.id
    else
      render :new
    end
  end

  def destroy
    @anuncio = Anuncio.find params[:id]
    @anuncio.destroy

    redirect_to anuncios_path
  end

end
