class Review < ApplicationRecord
  belongs_to :article, foreign_key: true
  validates :name, presence: true
  validates :star, presence: true
  validates :review_content, presence: true
end
