class Concern < ApplicationRecord
  validates :description, presence: true
  validates :urgency, presence: true
  validates :importance, presence: true

  enum urgency: {
    very_urgent: 1,
    somewhat_urgent: 2,
    mildly_urgent: 3,
    unurgent: 4
  }

  enum importance: {
    very_important: 1,
    somewhat_important: 2,
    mildly_important: 3,
    unimportant: 4
  }
end
