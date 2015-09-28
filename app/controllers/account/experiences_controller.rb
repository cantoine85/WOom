module Account
  class ExperiencesController < ApplicationController

    def index
      @experience = Experience.where(user: current_user)
    end

  end
end
