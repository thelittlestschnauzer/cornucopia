class UserMailer < ApplicationMailer
  default from: 'hello@momscan.co'

  def welcome_email(user)
    @user = user 
    email_with_name = %("#{@user.first_name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Welcome to Moms Can & Co')
  end 
  
end
