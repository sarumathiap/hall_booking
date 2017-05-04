class Page < ActiveRecord::Base
has_secure_password
	 EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..10 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..10, :on => :create


# before_save :encrypt_password
# after_save :clear_password
# def encrypt_password
#   if password.present?
#     self.salt = BCrypt::Engine.generate_salt
#     self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
#   end
# end
# def clear_password
#   self.password = nil
# end
# def self.authenticate(username_or_email="", login_password="")
#   if  EMAIL_REGEX.match(username_or_email)    
#     user = Page.find_by_email(username_or_email)
#   else
#     user = Page.find_by_name(username_or_email)
#   end
#   if user && user.match_password(login_password)
#     return user
#   else
#     return false
#   end
# # end   
# def match_password(login_password="")
#   encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
# end
end
