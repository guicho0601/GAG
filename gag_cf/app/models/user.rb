class User < ActiveRecord::Base
  attr_accessible :email, :password, :salt, :username
end
