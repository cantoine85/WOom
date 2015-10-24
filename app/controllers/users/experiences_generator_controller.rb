class ExperiencesGeneratorController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def experiences_generator
  end
end
