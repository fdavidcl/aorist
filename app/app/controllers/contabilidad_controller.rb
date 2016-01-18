class ContabilidadController < ApplicationController
  def index
  end
  
  def new
  end
  
  def show
    @lista_cobros = Cobro.order(:importe)
    @lista_pagos = Pago.order(:importe)
    @lista_por_anunciante_contrato = Cobro.group(:anunciante_contrato)
    @lista_por_medio_contrato = Pago.group(:medio_contrato)
    @balance_positivo = Cobro.sum(:importe)
    @balance_negativo = Pago.sum(:importe)
    @balance_total = balance_positivo - balance_negativo
  end
  
end
