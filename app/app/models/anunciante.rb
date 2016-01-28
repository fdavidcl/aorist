class Anunciante < ActiveRecord::Base
  has_many :anuncios, dependent: :destroy
  has_many :anunciante_contratos, dependent: :destroy
  has_many :cobros through :anunciante_contratos
  has_and_belongs_to_many :audiences
  validates :nombre, :web, :fiscales, presence: true, length: {minimum: 1}
end
