class ShortenedUrl < ApplicationRecord
  validates :long_url, :short_url, presence:true, uniqueness:true
  validates :user_id, presence:true
  belongs_to: author,
    foreign_key: :user_id
    class_name: :User

end
