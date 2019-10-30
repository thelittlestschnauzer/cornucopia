class UserController < ApplicationController
  
  
  
  def create 
    @user = User.create(params[:user])
      if @user.save 
          UserMailer.welcome_email(@user).deliver_now
      end 
    end 
  end
  
  
  
end
