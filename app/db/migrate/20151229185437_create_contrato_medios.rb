class CreateContratoMedios < ActiveRecord::Migration
  def change
    create_table :contrato_medios do |t|
      t.float :importe
      t.date :fecha
      t.string :descripcion
      t.date :duracion

      t.timestamps null: false
    end
  end
end
