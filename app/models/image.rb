class Image < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :comments

  validates :body, :title, presence: true
end
