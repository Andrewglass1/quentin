class WelcomeController < ApplicationController

  def index
    @videos = Video.all.sort_by(&:order)
  end
end
