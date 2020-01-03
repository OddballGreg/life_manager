class Todo < ApplicationRecord
  belongs_to :parent, class_name: 'Todo', required: false
  has_many :children, class_name: 'Todo', foreign_key: 'parent_id'

  validates :description, presence: true
end
