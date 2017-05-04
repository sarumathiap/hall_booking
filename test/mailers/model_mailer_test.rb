require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "new_record_notification" do
    mail = ModelMailer.new_record_notification
    assert_equal "New record notification", mail.subject
    assert_equal ["sarumathiap@gmail.com"], mail.to
    assert_equal ["markucinet@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
