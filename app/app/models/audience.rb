class Audience < ActiveRecord::Base
  validates :descripcion, :nombre, presence: true
end
