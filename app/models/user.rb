class User < ActiveRecord::Base

	has_one :student

	 before_save :encrypt_password
	  attr_accessor :password
	  attr_accessor :password_confirmation

	def encrypt_password
      if password.present?
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
    end

	def self.authenticate(name, password)
  	  user = find_by_name(name)
      if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
        user
      else
        nil
      end
   end

end
