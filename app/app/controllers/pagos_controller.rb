class PagosController < ApplicationController

  private
  def pago_params
    params.require(:pago).permit(:fecha, :importe)
  end

  public
  def create
    @pago = Pago.new pago_params
    @contrato = MedioContrato.find_by! id: params[:contrato_id]

    if @pago.save
      @contrato.pagos << @pago
    end

    redirect_to controller: :medio_contratos, action: :show, medio_id: @contrato.medio.id, id: @contrato.id
  end

end
