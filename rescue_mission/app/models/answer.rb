class Answer < ApplicationRecord
  validates :body, length: { in: 50..2000 }
  belongs_to :question
end
