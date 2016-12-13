class UsersController < ApplicationController
	def show
      @user = User.find_by(params[:id])
  end
  def new
		@user = User.new
	end
	
  def create
     @user = User.new(user_params)
   if @user.save
       log_in @user
      #flash[:success] = "Sign Up Successful"
       redirect_to users_url, notice: "Sign Up Successful"
    else
      render 'new'
    end
  end
  def edit
    @user = User.find_by(params[:id])
  end
  def update
    @user = User.find_by(params[:id])
   if @user.update_attributes(user_params)
      flash[:success] = "Profile has been changed"
      redirect_to users_url
    else
      render 'edit'
   end
  end
    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end

end
