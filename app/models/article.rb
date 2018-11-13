class Article < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :author, presence: true
  validates :title, presence: true
  validates :content, presence: true
  accepts_nested_attributes_for :reviews
end
