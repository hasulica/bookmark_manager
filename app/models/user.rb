require 'bcrypt'

class User

  include BCrypt

  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :email, String
  property :password_hash, Text

  def password=(new_password)
    self.password_hash = BCrypt::Password.create(new_password)
  end

end
