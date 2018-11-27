class WorkshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_and_authorize_current_workshop, only: [:show, :edit, :update, :destroy, :new]

  def index
    # @workshops = Workshop.all
    @workshops = policy_scope(Workshop).order(created_at: :desc)
  end

  def new
    @user = current_user
    @workshop = Workshop.new
  end

  private

  def find_and_authorize_current_workshop
    @workshop = Workshop.find(params[:id])
    authorize @workshop
  end
end
