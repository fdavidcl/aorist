class AddMedioContratoToPagos < ActiveRecord::Migration
  def change
    add_reference :pagos, :medio_contrato, index: true, foreign_key: true
  end
end
