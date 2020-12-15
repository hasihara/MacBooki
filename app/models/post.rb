class Post < ApplicationRecord

  {length: {maximum: 140}}
  validates :user_id, {presence: true}
  has_many :comments, dependent: :destroy
  mount_uploader :video, VideoUploader
  mount_uploader :picture, PictureUploader
  def user
    return User.find_by(id: self.user_id)
  end

end
