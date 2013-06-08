require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params)
    @user.password = params[:password]
    @user.save!
  end
end


def login(params)
  @user = User.find_by_email(params[:email])
  if @user.password == password
    # they logged in
  else
    # they messed up, make them try again
  end
end
