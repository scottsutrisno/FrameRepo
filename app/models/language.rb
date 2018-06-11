class Language < ApplicationRecord
  has_many :packages
  has_many :reviews
  has_many :reviews, through: :packages
end
