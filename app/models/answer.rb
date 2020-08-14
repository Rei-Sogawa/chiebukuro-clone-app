class Answer < ApplicationRecord

  belongs_to :user
  belongs_to :question
  has_one :best_answer

  validates :content, presence: true

  default_scope -> { order(created_at: :desc) }

end