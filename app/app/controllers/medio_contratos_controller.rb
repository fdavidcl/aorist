class MedioContratosController < ApplicationController
  private
  def medio_contrato_params
  
  end
  
  public
  def new
    @contrato = MedioContrato.new
  end 
  
  def create
    @contrato = MedioContrato.new medio_contrato_params
    
    if @contrato.save 
      redirect_to @contrato
    else
      render :new
    end
  
  end
  
  def show
    @contrato = MedioContrato.find_by id: params[:id]
  end

  def index
    @contratos = MedioContrato.all
  end
  
  def destroy
  
  end
  
end
