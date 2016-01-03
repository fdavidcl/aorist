class AudiencesController < ApplicationController
  private
  def audience_params
    params.require(:audience).permit(:nombre, :descripcion)
  end
  
  public  
  def new
    @audience = Audience.new
  end

  def create
    @audience = Aucience.new audience_params
    
    if @audience.save
      redirect_to @audience
    else
      render :new
    end
  end
  
  def show
    @aucience = Audience.find params[:id]
  end

  def index
    @audiences = Audience.all
  end
  
  def destroy
    @audience = Audience.find params[:id]
    @audience.destroy
    
    redirect_to audiences_path  
  end
  
end
