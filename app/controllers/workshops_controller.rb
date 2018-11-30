class WorkshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_and_authorize_current_workshop, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @workshops = policy_scope(Workshop).search_by_category(params[:query])
    else
      @workshops = policy_scope(Workshop).order(created_at: :desc)
    end

  end

  def new
    @workshop = Workshop.new
    authorize @workshop
  end

  def create
    # here assign user to workshop.
    @workshop = Workshop.new(workshop_params)
    @workshop.user = current_user
    authorize @workshop
    if @workshop.save
      redirect_to workshop_path(@workshop), notice: "Huzzah! Your workshop has been created!"
    else
      render 'new'
    end
  end

  def show
    @workshop = Workshop.find(params[:id])
    authorize @workshop
    # @workshop = Workshop.where.not(latitude: nil, longitude: nil)
    if @workshop.longitude && @workshop.latitude
      @markers = [
        {
          lng: @workshop.longitude,
          lat: @workshop.latitude,
          infoWindow: { content: render_to_string(partial: "/workshops/map_window", locals: { workshop: @workshop }) }
        }]

    end
  end

  def favourited
    @workshop = Workshop.find(params[:workshop_id])
    authorize @workshop
    if current_user.voted_up_on? @workshop
      current_user.dislikes @workshop
    else
      current_user.likes @workshop
    end
    redirect_to workshops_path
    # @workshop.favourited = !@workshop.favourited
  end

  private

  def find_and_authorize_current_workshop
    @workshop = Workshop.find(params[:id])
    authorize @workshop
  end

  def workshop_params
    params.require(:workshop).permit(:name, :category, :capacity, :price, :description, :difficulty, :area, :syllabus, :user_id, :favourited, :photo)
  end
end
