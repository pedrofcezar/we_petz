class Article < ApplicationRecord
  validates :author, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :dog_key, inclusion: { in: [ true, false ] }
  validates :cat_key, inclusion: { in: [ true, false ] }
  validates :pet_key, inclusion: { in: [ true, false ] }
  validates :product_key, inclusion: { in: [ true, false ] }
end
