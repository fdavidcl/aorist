class Medio < ActiveRecord::Base
  has_many :medio_contratos, dependent: :destroy
  has_many :espacios, dependent: :destroy
  has_and_belongs_to_many :audiences
  validates :nombre, :web, :fiscales, presence: true, length: {minimum: 1}
end
