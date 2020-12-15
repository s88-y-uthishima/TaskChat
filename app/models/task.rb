class Task < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy

  validates :title, length: { in: 1..255 }
end
