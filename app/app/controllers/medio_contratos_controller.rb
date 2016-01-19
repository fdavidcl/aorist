class MedioContratosController < ApplicationController
  layout "with_side", except: [:index]

  private
  def medio_contrato_params
    params.require(:medio_contrato).permit(:importe, :fecha, :descripcion, :duracion)
  end

  def find_by_id
    Medio.find_by id: params[:medio_id]
  end

  public
  def index
    @medio = find_by_id
    @contratos = @medio.medio_contratos
  end

  def new
    @medio = find_by_id
    @contratos = @medio.medio_contratos
    @contrato = MedioContrato.new
  end

  def create
    @medio = find_by_id
    @contratos = @medio.medio_contratos
    @contrato = MedioContrato.new medio_contrato_params

    if @contrato.save
      @medio.medio_contratos << @contrato
      redirect_to medio_contrato_path @medio, @contrato
    else
      render :new
    end
  end

  def show
    @medio = find_by_id
    @contratos = @medio.medio_contratos
    @contrato = MedioContrato.find_by id: params[:id]
  end

  def destroy
    @contrato = MedioContrato.find_by id: params[:id]
    @contrato.destroy

    redirect_to medio_contratos_path
  end

end
