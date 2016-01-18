class Tablaintermediatocha < ActiveRecord::Migration
  def change
    create_table :audiences_medios do |t|
      t.belongs_to :audience, index: true, foreign_key: true
      t.belongs_to :medio, index: true, foreign_key: true

      t.timestamps null: false
    end
    create_table :audiences_anunciantes do |t|
      t.belongs_to :audience, index: true, foreign_key: true
      t.belongs_to :anunciante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
