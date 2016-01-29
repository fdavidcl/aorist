class AnunciantesController < ApplicationController
  layout "with_side", except: [:index]
  helper_method :anunciantes

  private
  def anunciante_params
    params.require(:anunciante).permit(:nombre, :web, :fiscales)
  end

  def anunciantes
    Anunciante.where disabled: false
  end

  public

  def new
    @anunciante = Anunciante.new
  end

  def create
    @anunciante = Anunciante.new anunciante_params

    if @anunciante.save
      redirect_to @anunciante
    else
      render :new
    end
  end

  def show
    @anunciante = Anunciante.find_by id: params[:id]

    @audiences_asociables = if @anunciante.audiences.empty?
      Audience.all
    else
      Audience.where('nombre NOT IN (?)', @anunciante.audiences.pluck(:nombre))
    end
  end

  def index
  end

  def destroy
    @anunciante = Anunciante.find_by id: params[:id]
    @anunciante.disabled = true
    @anunciante.save
    @anunciante.anuncios.destroy

    redirect_to anunciantes_path
  end

  def associate_audience
    @audience = Audience.find_by id: params[:audience_id]
    @anunciante = Anunciante.find_by id: params[:id]
    @anunciante.audiences << @audience unless @anunciante.audiences.member? @audience

    redirect_to @anunciante
  end

  def dissociate_audience
    @audience = Audience.find_by id: params[:audience_id]
    @anunciante = Anunciante.find_by id: params[:id]
    @anunciante.audiences.delete @audience

    redirect_to @anunciante
  end
end
