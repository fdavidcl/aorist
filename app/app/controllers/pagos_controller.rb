class PagosController < ApplicationController

  private
  def pago_params
  
  end
  
  public
  def new
    @pago = Pago.new
  end
  
  def create
    @pago = Pago.new pago_params
  end
  
  def show
  
  end 

  def index
  
  end
  
  def destroy 
    @pago = Pago.find_by id: params[:id]
    @pago.destroy
    
    redirect_to pagos_path          # Puede que haya que venir a través de medios. 
  end 
end
