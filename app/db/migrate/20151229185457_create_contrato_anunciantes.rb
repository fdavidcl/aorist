class CreateContratoAnunciantes < ActiveRecord::Migration
  def change
    create_table :contrato_anunciantes do |t|
      t.float :importe
      t.date :fecha
      t.string :descripcion
      t.date :duracion

      t.timestamps null: false
    end
  end
end
