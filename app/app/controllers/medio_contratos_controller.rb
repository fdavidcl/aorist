class MedioContratosController < ApplicationController
  private
  def medio_contrato_params
    params.require(:medio_contrato).permit(:importe, :fecha, :descripcion, :duracion)
  end
  
  public
  def index
    @medio = Medio.find_by id: params[:medio_id]
    @contratos = MedioContrato.all
  end
  
  def new
    @contrato = MedioContrato.new
  end 
  
  def create
    @medio = Medio.find_by id: params[:medio_id]
    @contrato = @medio.contratos.create medio_contrato_params
    
    if @contrato.save 
      redirect_to medio_contrato_path params[:medio_id], @contrato.id
    else
      render :new
    end
  end
  
  def show
    @medio = Medio.find_by id: params[:medio_id] 
    @contrato = MedioContrato.find_by id: params[:id]
  end
  
  def destroy
  
  end
  
end
