class CreateMedios < ActiveRecord::Migration
  def change
    create_table :medios do |t|
      t.string :nombre
      t.string :web
      t.string :fiscales

      t.timestamps null: false
    end
  end
end
