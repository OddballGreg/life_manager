class Objective < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true

  enum level: {
    long_term: 'Long Term',
    medium_term: 'Medium Term',
    short_term: 'Short Term'
  }
end
