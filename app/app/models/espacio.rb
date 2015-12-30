class Espacio < ActiveRecord::Base
  belongs_to :medio
  belongs_to :anuncio
end
