class Volunteer < ApplicationRecord
  has_many :shifts # CRIA UM METODO QUE PERMITE LER TODAS AS INSTANCIAS ASSOCIADAS!
  validates :name, presence: true
end
