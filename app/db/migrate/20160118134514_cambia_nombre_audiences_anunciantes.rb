class CambiaNombreAudiencesAnunciantes < ActiveRecord::Migration
  def change
    drop_table :audiences_anunciantes
    create_table :anunciantes_audiences do |t|
      t.belongs_to :audience, index: true, foreign_key: true
      t.belongs_to :anunciante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
