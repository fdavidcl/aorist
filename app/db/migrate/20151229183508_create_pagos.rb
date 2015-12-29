class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.float :importe
      t.date :fecha

      t.timestamps null: false
    end
  end
end
