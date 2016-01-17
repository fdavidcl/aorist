class CreateAnuncioAllocations < ActiveRecord::Migration
  def change
    create_table :anuncio_allocations do |t|
      t.references :anuncio, index: true, foreign_key: true
      t.references :espacio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
