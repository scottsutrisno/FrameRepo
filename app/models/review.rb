class Review < ApplicationRecord
  belongs_to :user
  belongs_to :package
  has_many :comments
  has_many :review_ratings
  
  validates :user_id, presence: true
  validates :package_id, presence: true
  validates :overall_rating, presence: true
  validates :pros, length: { minimum: 5, maximum: 100 }
  validates :cons, length: { minimum: 5, maximum: 100 }
  validates :general, length: { minimum: 10, maximum: 250 }
  
  def self.search(search)
  where("general LIKE ?", "%#{search}%")
  end
end
