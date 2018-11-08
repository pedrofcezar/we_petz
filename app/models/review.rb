class Review < ApplicationRecord
  belongs_to :article
  validates :name, presence: true
  validates :stars, presence: true, inclusion: { in: [1..5] }
  validates :review_content, presence: true, lenght: { minumum: 15, maximum: 240 }
end
