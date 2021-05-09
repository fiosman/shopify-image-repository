class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :image

  validates :body, :rating, presence: true
end
