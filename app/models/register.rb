class Register < ApplicationRecord

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :name, :presence => true,  :length => { :in => 3..10 }
  validates :email, :presence => true
   
 validates :time, :endtime, :overlap => true
 validate :start_date_cannot_be_in_the_past		
 def start_date_cannot_be_in_the_past		
 if time && time < DateTime.now + (15.minutes)			
 errors.add(:time, 'must be at least 15 minutes from present time')			
end		
end
end
#before_save :encrypt_password
#after_save :clear_password
#def encrypt_password
 # if password.present?
  #  self.salt = BCrypt::Engine.generate_salt
   # self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
  #end

