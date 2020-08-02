class Question < ApplicationRecord

  belongs_to :user
  has_many :answers, dependent: :destroy

  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :title, presence: true,
                    length: { maximum: 140 }
  validates :content, presence: true,
                      length: { maximum: 30000 }

end
