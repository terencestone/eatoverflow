class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable

  validates :body, presence: true, length: { minimum: 2 }

end