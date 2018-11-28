class UsersController < ApplicationController
  def dashboard
    @workshops = current_user.workshops
    @bookings = current_user.bookings
  end
end
