class ReminderMailer < ApplicationMailer
	 default from: 'markucinet@gmail.com'
 
  def reminder_mailer(reminder)
  	@reminder = reminder
    @message = "#reminder.message"
 
    mail(to: reminder.email, subject: 'Birthday Reminder', from: "markucinet@gmail.com")
end
end