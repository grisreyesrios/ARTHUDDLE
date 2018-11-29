class WorkshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_and_authorize_current_workshop, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @ẃorkshops = Workshop.where(category: params[:query])
    else
      @workshops = Workshop.all
    end

    @workshops = policy_scope(Workshop).order(created_at: :desc)

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
  end

  private

  def find_and_authorize_current_workshop
    @workshop = Workshop.find(params[:id])
    authorize @workshop
  end

  def workshop_params
    params.require(:workshop).permit(:name, :category, :capacity, :price, :description, :difficulty, :area, :syllabus, :user_id)
  end
end
