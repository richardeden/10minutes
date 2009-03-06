class Emailer < ActionMailer::Base
  def deliver_daily_devotion(recipient, subject, message)
    @subject = subject
    @recipients = recipient
    @from = 'devotions@disciplex.co.uk'
    @sent_on = Time.now
	  @body["title"] = 'Can we have 10 minutes of your time?' #probably want to include the date in the title?
	  @body["email"] = 'devotions@disciplex.co.uk'
 	  @body["message"] = message
    @headers = {}
  end
end
