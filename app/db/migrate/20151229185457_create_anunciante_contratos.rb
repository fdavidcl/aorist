class CreateAnuncianteContratos < ActiveRecord::Migration
  def change
    create_table :anunciante_contratos do |t|
      t.float :importe
      t.date :fecha
      t.string :descripcion
      t.date :duracion

      t.timestamps null: false
    end
  end
end
