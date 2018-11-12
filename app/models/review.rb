class Review < ApplicationRecord
  belongs_to :article
  validates :name, presence: true
  validates :star, presence: true
  validates :review_content, presence: true
end
