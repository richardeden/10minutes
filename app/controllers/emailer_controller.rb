class EmailerController < ApplicationController
  def sendmail
    @users = User.find(:all)
    email = @params["email"]
	  recipient = email["recipient"]
	  subject = email["subject"]
    message = email["message"]
    Emailer.deliver_daily_devotion(@users, subject, message)
    return if request.xhr?
    render :text => 'Message sent successfully'
  end
  
end
