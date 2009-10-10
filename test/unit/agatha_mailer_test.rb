require 'test_helper'

class AgathaMailerTest < ActionMailer::TestCase
  test "email" do
    @expected.subject = 'AgathaMailer#email'
    @expected.body    = read_fixture('email')
    @expected.date    = Time.now

    assert_equal @expected.encoded, AgathaMailer.create_email(@expected.date).encoded
  end

end
