class UsersController < ApplicationController
  def dashboard
    skip_authorization
    @user = current_user
    @workshops = current_user.workshops
    @bookings = current_user.bookings
    @notes = Note.where(user: current_user)
  end

  def user_params
   params.require(:user).permit(:email, :password, :photo)
 end
end
