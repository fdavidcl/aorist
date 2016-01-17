class CreateMedioContratos < ActiveRecord::Migration
  def change
    create_table :medio_contratos do |t|
      t.references :medio, index: true, foreign_key: true
      t.float :importe
      t.date :fecha
      t.string :descripcion
      t.date :duracion

      t.timestamps null: false
    end
  end
end
