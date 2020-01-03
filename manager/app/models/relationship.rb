class Relationship < ApplicationRecord
  validates :name, presence: true

  scope :like, -> (name) { find_by("name ILIKE ?", "%#{name}%")}
end
