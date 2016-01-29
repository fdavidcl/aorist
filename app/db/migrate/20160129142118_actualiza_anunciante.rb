class ActualizaAnunciante < ActiveRecord::Migration
  def change
    add_column :anunciantes, :disabled, :boolean, :default => false
  end
end
