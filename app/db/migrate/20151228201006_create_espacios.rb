class CreateEspacios < ActiveRecord::Migration
  def change
    create_table :espacios do |t|
      t.references :medio, index: true, foreign_key: true
      t.boolean :multimedia
      t.boolean :enlace
      t.integer :ancho
      t.integer :alto

      t.timestamps null: false
    end
  end
end
