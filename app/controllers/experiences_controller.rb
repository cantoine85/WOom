class ExperiencesController < ApplicationController

  def index
    @experience = Experience.first
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
  end

  def create
  end
end
