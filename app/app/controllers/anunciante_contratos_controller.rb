class AnuncianteContratosController < ApplicationController
  layout "with_side", except: [:index]

  private
  def anunciante_contrato_params
    params.require(:anunciante_contrato).permit(:importe, :fecha, :descripcion, :duracion)
  end

  def find_by_id
    Anunciante.find_by id: params[:anunciante_id]
  end

  public

  def index
    @anunciante = find_by_id
    @contratos = @anunciante.anunciante_contratos
  end

  def new
    @anunciante = find_by_id
    @contratos = @anunciante.anunciante_contratos
    @contrato = AnuncianteContrato.new
  end

  def create
    @anunciante = find_by_id
    @anunciantes = Anunciante.all
    @contrato = @anunciante.anunciante_contratos.create anunciante_contrato_params

    if @contrato.save
      redirect_to anunciante_contratos_path params[:anunciante_id], @contrato.id
    else
      render :new
    end

  end

  def show
    @anunciante = find_by_id
    @contratos = @anunciante.anunciante_contratos
    @contrato = AnuncianteContrato.find_by id: params[:id]
    @cobro = Cobro.new
  end


  # def destroy
  #   @contrato = AnuncianteContrato.find_by id: params[:id]
  #   @contrato.destroy
  #
  #   redirect_to anunciante_contratos_path
  # end

end
