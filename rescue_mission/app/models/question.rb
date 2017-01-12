class Question < ApplicationRecord
  validates :title, length: { in: 40..200 }
  validates :body, length: { in: 150..2000 }
  has_many :answers, :dependent => :destroy
end
