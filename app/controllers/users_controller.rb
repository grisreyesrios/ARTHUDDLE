class UsersController < ApplicationController
  def dashboard
    skip_authorization
    @workshops = current_user.workshops
    @bookings = current_user.bookings
    @notes = Note.where(user: current_user)
  end
end
