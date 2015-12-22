class Medio < ActiveRecord::Base
  validates :nombre, :presence => true, :length => {:minimum => 1}
end
