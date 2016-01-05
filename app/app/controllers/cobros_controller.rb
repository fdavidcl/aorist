class CobrosController < ApplicationController

  private
  def cobro_params
  
  end
  
  public
  def new
    @cobro = Cobro.new
  end
  
  def create
  
  end
  
  def show
  
  end 

  def index
  
  end
  
  def destroy 
    @cobro = Cobro.find_by id: params[:id]
    @cobro.destroy
    
    redirect_to cobros_path       # Puede que haya que venir a través de anunciantes. 
  end 
 
end
