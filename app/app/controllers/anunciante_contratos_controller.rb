class AnuncianteContratosController < ApplicationController
  private
  def anunciante_contrato_params
  
  end
  
  public   
  def new
    @contrato = AnuncianteContrato.new
  end 
  
  def create
    @contrato = AnuncianteContrato.new anunciante_contrato_params
    
    if @contrato.save 
      redirect_to @contrato
    else
      render :new
    end
  
  end
  
  def show
    @contrato = AnuncianteContrato.find_by id: params[:id]
  end

  def index
    @contratos = AnuncianteContrato.all
  end
  
  def destroy
  
  end
  
end
