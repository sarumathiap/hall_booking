# Preview all emails at http://localhost:3000/rails/mailers/reminder_mailer
class ReminderMailerPreview < ActionMailer::Preview
def reminder_mailer
    ReminderMailer.reminder_mailer(Reminder.last)
  end
end
