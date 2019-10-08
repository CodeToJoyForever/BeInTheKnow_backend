class User < ApplicationRecord
   validates :password, length: { minimum: 8 }
  validates :username, uniqueness: true
  validates :username,:password,:email, presence: true
  has_secure_password
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
