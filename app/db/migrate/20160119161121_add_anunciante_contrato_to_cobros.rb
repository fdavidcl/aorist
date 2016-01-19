class AddAnuncianteContratoToCobros < ActiveRecord::Migration
  def change
    add_reference :cobros, :anunciante_contrato, index: true, foreign_key: true
  end
end
