class NotificationMailer < ApplicationMailer
  default from: 'notifications@my-media-library.com'

  def welcome_email(current_user)
    @user = current_user
    @url = 'https://my-media-library.com'
    mail(to: @user.email, subject: 'Welcome to My Media Library')
  end
end
