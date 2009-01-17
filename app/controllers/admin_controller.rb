
require 'ruby-debug'
class AdminController < ApplicationController
#  before_filter :valid_ip, :except => :accessdenied
  # just display the form and wait for user to
  # enter a name and password
  
  def login
    
    
     if session[:valid_ip] == false
         current_ip = request.remote_ip
         if current_ip =~ /(127\.0\.0\.1|163\.1\.170\..*)/
            
            session[:valid_ip] = true
            
         else
             
            flash.now[:notice] = "Access denied!"
            redirect_to :controller => :welcome, :action => :accessdenied 
         end
    end  

    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id

        redirect_to( { :action => "index" })

      else
        flash.now[:notice] = "Invalid user/password combination"

      end
    else

    end
  end
  

  
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

  def accessdenied

  end
    def valid_ip

  end


  
end

