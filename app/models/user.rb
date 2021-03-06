class User < ApplicationRecord

  has_many :questions
  has_many :answers

  has_secure_password

  validates :name, presence: true,
                   uniqueness: true
  validates :password, presence: true,
                       allow_nil: true,
                       length: { minimum: 6 }

end
