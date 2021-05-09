class Image < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :comments

  validates :body, :title, presence: true

  def average_rating
    self.comments.count > 0 ? self.comments.average(:rating).to_f.round : 0
  end
end
