class ApplicationController < ActionController::Base


  private 

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user 
      welcome_path
    elsif resource_or_scope == :admin 
      new_admin_session_path 
    else
      welcome_path 
    end  
  end 


end
