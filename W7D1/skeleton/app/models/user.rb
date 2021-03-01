class User < ApplicationRecord
 validates :user_name, :session_token, presence:true, uniqueness:true
 validates :password_digest, :presence:true

 after_initialize :ensure_session_token

 def reset_session_token!
  self.session_token = User.generate_session_token
  self.save!
  self.session_token
 end

 def self.generate_session_token
  SecureRandom::urlsafe_base64(16)
 end

 def password=(password)
  @password = password
  self.password_digest = BCrypt::Password.create(password)
 end
end




 def ensure_session_token
  self.session_token ||= User.generate_session_token
 end


end
