class UserMailer < ApplicationMailer
  default from: 'notifications@example.com' 

  def welcome_email(user)
    @user = user
    @user.created_at = DateTime.now()
    mail(to: 'admin@bananacoding.com', subject: 'Notifications Login')
  end
end
