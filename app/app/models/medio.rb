class Medio < ActiveRecord::Base
  has_many :medio_contratos
  has_many :espacios
  has_and_belongs_to_many :audiences
  validates :nombre, :web, :fiscales, presence: true, length: {minimum: 1}
end
