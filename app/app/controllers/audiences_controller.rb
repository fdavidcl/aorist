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
    @audience = Audience.new audience_params
    
    if @audience.save
      redirect_to @audience
    else
      render :new
    end
  end
  
  def show
    @audience = Audience.find_by id: params[:id]
  end

  def index
    @audiences = Audience.all
  end
  
  def destroy
    @audience = Audience.find_by id: params[:id]
    @audience.destroy
    
    redirect_to audiences_path  
  end
  
end
