class ContabilidadController < ApplicationController
  def suma_pagos
    Pago.sum(:importe)
  end
  
  def suma_cobros
    Cobro.sum(:importe)
  end
  
  def index
  end
  
  def new
  end
  
  def show
    @balance_positivo = suma_cobros
    @balance_negativo = suma_pagos
    @balance_total = balance_positivo - balance_negativo
  end
  
end
