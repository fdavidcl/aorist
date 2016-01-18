class Audience < ActiveRecord::Base
  validates :descripcion, :nombre, presence: true
  has_and_belongs_to_many :medios
  has_and_belongs_to_many :anunciantes
end
