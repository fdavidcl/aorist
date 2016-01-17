class AnuncioAllocation < ActiveRecord::Base
  belongs_to :anuncio
  belongs_to :espacio
end
