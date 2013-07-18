class Usuario < ActiveRecord::Base
  	attr_accessible :crypted_password, :email, :salt, :username
  	authenticates_with_sorcery!
	validates_confirmation_of :password, message: "Ambos campos deben coincidir", if: :password
end
