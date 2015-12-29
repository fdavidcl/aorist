class CreateAnunciantes < ActiveRecord::Migration
  def change
    create_table :anunciantes do |t|
      t.string :nombre
      t.string :web
      t.string :fiscales

      t.timestamps null: false
    end
  end
end
