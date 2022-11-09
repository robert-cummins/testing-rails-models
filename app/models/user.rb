class User < ApplicationRecord
  has_many :posts
  validates :name, :email, presence: true

  

  scope :recent, -> { where('created_at > ?', 1.week.ago) }

  def profile_photo_url
    EmailMd5Generator.profile_photo_url(email)
  end

end
