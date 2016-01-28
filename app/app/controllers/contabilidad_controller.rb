class ContabilidadController < ApplicationController
helper_method :order_amount, :order_date, :group_contract, :group_owner

  private
  def order_amount
    @lista_cobros = Cobro.order(:importe)
    @lista_pagos = Pago.order(:importe)
  end

  def order_date
    @cobros_date = Cobro.order(:fecha)
    @pagos_date = Pago.order(:fecha)
  end

  def group_contract
    @cobros_contrato = Cobro.group(:anunciante_contrato)
    @pagos_contrato = Pago.group(:medio_contrato)
  end

  def group_owner
    @cobros_anunciante = Cobro.group(:anunciante)
    @cobros_medio = Pago.group(:medio)
  end

  public
  def show
    @balance_positivo = Cobro.sum(:importe)
    @balance_negativo = Pago.sum(:importe)
    @balance_total = @balance_positivo - @balance_negativo
  end

end
