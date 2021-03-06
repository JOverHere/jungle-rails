class UsersController < ApplicationController

  def new
    end

  #   def create
  #     puts "test2"
  #   user = User.find_by_email(params[:email])
  #   # If the user exists AND the password entered is correct.
  #   if user && user.authenticate(params[:password])
  #     # Save the user id inside the browser cookie. This is how we keep the user
  #     # logged in when they navigate around our website.
  #     session[:user_id] = user.id
  #     redirect_to '/'
  #   else
  #   # If user's login doesn't work, send them back to the login form.
  #     redirect_to '/login'
  #   end
  # end



  def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
  end
end

def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end



private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end
