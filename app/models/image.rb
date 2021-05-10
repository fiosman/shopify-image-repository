class Image < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :body, :title, presence: true
  validate :valid_image

  def self.sort_images
    Image.all.order(created_at: :desc)
  end

  def average_rating
    self.comments.count > 0 ? self.comments.average(:rating).to_f.round : 0
  end

  private

  def valid_image
    return errors.add(:photo, "must be chosen") if !photo.attached?
    errors.add(:photo, "is invalid type") if !photo.image?
  end
end
