class Question < ApplicationRecord

  belongs_to :user
  has_many :answers

  validates :title, presence: true
  validates :content, presence: true

  default_scope -> { order(created_at: :desc) }

  def resolved
    @resolved = @resolved.nil? ? self.answers.where(best: true).count == 1 : @resolved
  end

end
