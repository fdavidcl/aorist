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
      Cobro.group(:anunciante_contrato),
      Pago.group(:medio_contrato)
    ]
  end

  def group_owner
    [
      Cobro.group(:anunciante),
      Pago.group(:medio)
    ]
  end

  public
  def show
    @balance_positivo = Cobro.sum(:importe)
    @balance_negativo = Pago.sum(:importe)
    @balance_total = @balance_positivo - @balance_negativo

    order = params[:order] || "date"
    @cobros, @pagos = if order == "date"
      order_date
    elsif order == "amount"
      order_amount
    end
  end

end
