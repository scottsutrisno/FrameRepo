class Package < ApplicationRecord
  belongs_to :language
  has_many :reviews
  has_many :users, through: :reviews
  has_many :comments, through: :reviews

  validates :url, length: { minimum: 3, maximum: 50 }
  validates :name, length: { minimum: 2, maximum: 30 }
  validates :language_id, presence: true, numericality: { integer_only: true }
  validates :developed_by, presence: true, length: { minimum: 2, maximum: 20 }
  validates :live, presence: true
  validates :last_updated, presence: true

end
