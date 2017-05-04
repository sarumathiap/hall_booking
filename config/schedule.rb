every 2.minutes do
#   command "/usr/bin/some_great_command"
   runner "Reminder.automatic", :environment => 'development'
#   rake "some:great:rake:task"
end