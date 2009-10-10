class AgathaMailer < ActionMailer::Base  

  def email(agatha_email, to_email)
    subject    agatha_email.subject
    recipients to_email
    from       agatha_email.from_email
    sent_on    Time.now    
    body       :body_text => agatha_email.body
  end
end

