class AnunciantesController < ApplicationController
  private
  def anunciante_params
    params.require(:anunciante).permit(:nombre, :web, :fiscales)
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
    @anunciante = Anunciante.find params[:id]
  end

  def index
    @anunciantes = Anunciante.all
  end
  
  def destroy
    @anunciante = Anunciante.find params[:id]
    @anunciante.destroy
    
    redirect_to anunciantes_path
  end
  
  # Check this out. 
  def asociate_audience
    @audience = Audience.find params[:audience_id]
    @anunciante = Anunciante.find params[:id]
    @anunciante.audiences << @audience
  end
  
end
