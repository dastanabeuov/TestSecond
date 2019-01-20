class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :test_passages, foreign_key: :current_question_id
  belongs_to :test

  validates :body, presence: true
end
