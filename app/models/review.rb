class Review < ApplicationRecord
  belongs_to :article
  validates :name, presence: true
  validates :star, presence: true, inclusion: { in: (0...5) }
  validates :review_content, presence: true
end
