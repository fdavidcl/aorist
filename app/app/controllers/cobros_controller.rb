class CobrosController < ApplicationController

  private
  def cobro_params
    params.require(:cobro).permit(:fecha, :importe)
  end

  public
  def create
    @cobro = Cobro.new cobro_params
    @contrato = AnuncianteContrato.find_by! id: params[:contrato_id]

    begin
      if @cobro.save
        @contrato.cobros << @cobro
      end

      redirect_to controller: :anunciante_contratos, action: :show, anunciante_id: @contrato.anunciante.id, id: @contrato.id
    rescue ActiveRecord::StatementInvalid => error
      redirect_to controller: :anunciante_contratos, action: :show, anunciante_id: @contrato.anunciante.id, id: @contrato.id, error: "Cobro supera límite importe"
    end
  end
end
