class ChangeDisabledMedio < ActiveRecord::Migration
  def change
    change_column :medios, :disabled, :boolean, :default => false
  end
end
