class AddDisabledToMedio < ActiveRecord::Migration
  def change
    add_column :medios, :disabled, :boolean
  end
end
