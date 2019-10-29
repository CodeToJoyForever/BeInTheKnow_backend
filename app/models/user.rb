class User < ApplicationRecord
  has_secure_password
  validates :email,:username, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 8}
# we need to change this secret into env file
  @mysecret ="myapp"

  def self.create_token(user_object)
    payload = { user: JSON.parse(user_object.to_json) }
    token = JWT.encode(payload, @mysecret, 'HS256')
  end

  def self.decode_token(token)
    decoded = JWT.decode(token, @mysecret, true, { algorithm: 'HS256' })
  end
end
