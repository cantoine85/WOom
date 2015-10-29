class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home, :experiences_generator]
  def home
  end
end
