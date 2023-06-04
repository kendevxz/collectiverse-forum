class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, length: { in: 4..32 }, presence: true,
                      uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  validates :admin_level, numericality: { only_integer: true,
                                          less_than_or_equal_to: 3 }
  before_save { username.downcase! }
  before_save { email.downcase! }
end
