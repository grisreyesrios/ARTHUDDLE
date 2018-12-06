class BookingsController < ApplicationController
  before_action :find_and_authorize_current_booking, only: [:show, :edit, :update, :destroy]

  def new
    @user = current_user
    @workshop = Workshop.find(params[:workshop_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @workshop = Workshop.find(params[:workshop_id])
    @booking = Booking.new(booking_params)
    @booking.workshop = @workshop
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to workshop_booking_path(@workshop, @booking), notice: 'Booking was successfully created.'
    else
      redirect_to workshop_path(@workshop)
    end
  end

  def edit
    @booking = Booking.find(params[:booking_id])
  end

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    # @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @booking
    @workshop = @booking.workshop
  end

  private

  def find_and_authorize_current_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:workshop_id, :number)
  end
end
