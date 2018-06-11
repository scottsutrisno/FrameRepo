class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  validates :username, uniqueness: true
  # validates :username, length: { minimum: 3, maximum: 25 }
  # validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 100 }
  # validates :first_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  # validates :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  # validates :occupation, length: {minimum: 2, maximum: 30 }

  def self.from_omniauth(auth)  
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
  has_many :comments
  has_many :reviews
  
  include Gravtastic
  gravtastic
end
