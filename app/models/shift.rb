class Shift < ApplicationRecord
  belongs_to :event
  belongs_to :volunteer

  validates :volunteer, uniqueness: { scope: :event }
  validates :feedback, length: { minimum: 6 }
end
