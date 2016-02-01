class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.references :anunciante, index: true, foreign_key: true
      t.text :contenido
      t.string :url

      t.timestamps null: false
    end
  end
end
