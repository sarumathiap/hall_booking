class Reminder < ApplicationRecord
  acts_as_birthday :dob
	validates_presence_of :name, :dob
 	validate :user_must_have_been_born

	#def birthday_today?
   #dob.month == Time.now.month &&  dob.day == Time.now.day
  
 #end
  def next_birthday
   	Time.now.to_date.distance_to(self.dob)
  	end

  
  	def is_birthday?
  		self.next_birthday[:months] == 0 and self.next_birthday[:days] == 0
 end
  	def user_must_have_been_born
    	if dob and dob > Date.today
    	  errors.add(:dob, "User must have been born.")
    	end
 end

end
