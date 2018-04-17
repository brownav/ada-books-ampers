class UsersController < ApplicationController
  # def create
  #   auth_hash = request.evn['omniauth.auth']
  #   raise
  #
  #   @user = User.find_by :name params[:user][:name]
  #
  #   if @user
  #     session[:user_id] = @user.id
  #     flash[:success] = "Welcome back #{@user.name}"
  #   else
  #     @user = User.find_by :name params[:user][:name]
  #     session[:user_id] = @user.id
  #     flash[:success] = "Welcome #{@user.name}"
  #   end
  #   redirect_to root_path
  # end
  #
  # def new
  #   @user = User.new
  # end
  #
  # def destroy
  #   session[:user_id] = nil
  #   flash[:success] = "You logged out."
  #   redirect_to root_path
  # end
end

#sessionscontroller
def create
  auth_hash = request.env['omniauth.auth']

  if auth_hash[:uid]
    @user = User.find_by(uid: auth_hash[:uid], provider: 'github')
    if @user.nil?
      # it's a new user, we need to make a user
      @user = User.build_from_github(auth_hash)
      successful_save = @user.save
      if successful_save
        flash[:success] = "Logged in successfully"
        session[:user_id] = @user.id
        redirect_to root_path
      else
        flash[:error] = "Some error happened in User creation"
        redirect_to root_path
      end
    else
      flash[:success] = "Logged in successfully"
      session[:user_id] = @user.id
      redirect_to root_path
    end

  else
    flash[:error] = "Logging in via github not successful"
    redirect_to root_path
  end

end
