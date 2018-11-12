class Article < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
