class PagosController < ApplicationController
  layout "with_side", except: [:index]

  private
  def pago_params
    params.require(:pago).permit(:fecha, :importe)
  end

  public
  def create
    @contrato = MedioContrato.find_by! id: params[:contrato_id]

    begin
      @contrato.pagos.create! pago_params

      redirect_to controller: :medio_contratos, action: :show, medio_id: @contrato.medio.id, id: @contrato.id
    rescue ActiveRecord::StatementInvalid => error
      redirect_to controller: :medio_contratos, action: :show, medio_id: @contrato.medio.id, id: @contrato.id, error: "Pago supera límite importe"
    end
  end
end
