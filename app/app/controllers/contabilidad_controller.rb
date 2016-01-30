class ContabilidadController < ApplicationController
helper_method :order_amount, :order_date, :group_contract, :group_owner

  private
  def order_amount
    [
      Cobro.order(importe: :desc),
      Pago.order(importe: :desc)
    ]
  end

  def order_date
    [
      Cobro.order(fecha: :desc),
      Pago.order(fecha: :desc)
    ]
  end

  def group_contract
    [
      Cobro.group(:anunciante_contrato).sum(:importe),
      Pago.group(:medio_contrato).sum(:importe)
    ]
  end

  def group_owner
    [
      AnuncianteContrato.joins(:cobros).group(:anunciante).sum("cobros.importe"),
      MedioContrato.joins(:pagos).group(:medio).sum("pagos.importe")
    ]
  end

  public
  def show
    @balance_positivo = Cobro.sum(:importe)
    @balance_negativo = Pago.sum(:importe)
    @balance_total = @balance_positivo - @balance_negativo

    @cobros, @pagos = case params[:order]
                      when "amount" order_amount
                      when "contract" group_contract
                      when "owner" group_owner
                      else order_date
                      end
  end

end
