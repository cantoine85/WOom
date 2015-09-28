class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @experience = Experience.first
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:title, :category, :picture, :description, :address, :start_date, :end_date, :status)
  end
end
