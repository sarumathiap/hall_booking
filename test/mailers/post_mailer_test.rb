require 'test_helper'

class PostMailerTest < ActionMailer::TestCase
  test "new_post_notification" do
    mail = PostMailer.new_post_notification
    assert_equal "New post notification", mail.subject
    assert_equal ["sarumathiap@gmail.com"], mail.to
    assert_equal ["markucinet@mail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end