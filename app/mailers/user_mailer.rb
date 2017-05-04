class UserMailer < ApplicationMailer
	 default from: 'markucinet@gmail.com'
 
  def welcome_email(register)
    @register = register
 
    mail(to: register.email, subject: 'Conference Room booking status')
  end
end