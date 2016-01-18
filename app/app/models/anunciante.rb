class Anunciante < ActiveRecord::Base
  has_many :anuncios
  has_many :anunciante_contratos
  has_and_belongs_to_many :audiences
  validates :nombre, :web, :fiscales, presence: true, length: {minimum: 1}
end
