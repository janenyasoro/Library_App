class SessionsController < ApplicationController
	def new
	end
	def create
      user = User.find_by(email: params[:session][:email].downcase)
        if user        
          log_in user
          redirect_to users_url
        else
           flash[:danger] = 'Invalid email/password combination' 
           render 'new'
       end
	end
	def destroy
      log_out
      redirect_to root_url
    end
end
