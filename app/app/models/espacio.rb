class Espacio < ActiveRecord::Base
  belongs_to :medio
  has_one :anuncio_allocation, dependent: :destroy
  has_one :anuncio, through: :anuncio_allocation
end
