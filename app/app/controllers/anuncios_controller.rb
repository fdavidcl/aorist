class AnunciosController < ApplicationController

  private
  def anuncio_params
    params.require(:anuncio).permit(:contenido, :URL)
  end

  public
  def index
    @anunciante = Anunciante.find_by :id => params[:anunciante_id]
    @anuncios = @anunciante.anuncios
  end

  def new
    @anunciante = Anunciante.find_by :id => params[:anunciante_id]
    @anuncio = Anuncio.new
  end

  def show

  end

  def create
    @anuncio = Anuncio.new anuncio_params
  end

  def destroy
    @anuncio = Anuncio.find params[:id]
    @anuncio.destroy

    redirect_to anuncios_path
  end

end
