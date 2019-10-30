class UserMailer < ApplicationMailer
  default to: -> { Admin.pluck(:email) },
          from: 'hello@momscan.co'

  
  def new_registration(user)
    @user = user 
    mail(subject: 'New User Signup: #{@user.email}')
  end 
end 