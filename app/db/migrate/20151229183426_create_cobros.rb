class CreateCobros < ActiveRecord::Migration
  def change
    create_table :cobros do |t|
      t.float :importe
      t.date :fecha

      t.timestamps null: false
    end
  end
end
