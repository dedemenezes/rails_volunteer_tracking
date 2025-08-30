class Shift < ApplicationRecord
  belongs_to :event # CRIAR UM METODO COM O NOME :METHOD_NAME
  belongs_to :volunteer # CRIAR UM METODO COM O NOME :METHOD_NAME
  # shift.event
  # shift.event = INSTANCIA DE EVENTO
  validates :volunteer, uniqueness: { scope: :event }
  validates :feedback, length: { minimum: 6 }
end
