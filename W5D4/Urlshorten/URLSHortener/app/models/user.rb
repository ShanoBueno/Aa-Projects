class User < ApplicationRecord
  validates :email, :user_id, presence: true, uniqueness: true

end