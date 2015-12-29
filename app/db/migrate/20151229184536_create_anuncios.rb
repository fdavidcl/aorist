class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.text :contenido
      t.string :URL

      t.timestamps null: false
    end
  end
end
