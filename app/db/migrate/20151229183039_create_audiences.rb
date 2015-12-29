class CreateAudiences < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
