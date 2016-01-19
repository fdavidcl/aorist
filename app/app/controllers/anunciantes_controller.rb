class AnunciantesController < ApplicationController
  layout "with_side", except: [:index]

  private
  def anunciante_params
    params.require(:anunciante).permit(:nombre, :web, :fiscales)
  end

  public

  def new
    @anunciantes = Anunciante.all
    @anunciante = Anunciante.new
  end

  def create
    @anunciantes = Anunciante.all
    @anunciante = Anunciante.new anunciante_params

    if @anunciante.save
      redirect_to @anunciante
    else
      render :new
    end
  end

  def show
    @anunciantes = Anunciante.all
    @anunciante = Anunciante.find_by id: params[:id]

    @audiences_asociables = if @anunciante.audiences.empty?
      Audience.all
    else
      Audience.where('nombre NOT IN (?)', @anunciante.audiences.pluck(:nombre))
    end
  end

  def index
    @anunciantes = Anunciante.all
  end

  def destroy
    @anunciante = Anunciante.find_by id: params[:id]
    @anunciante.destroy

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
