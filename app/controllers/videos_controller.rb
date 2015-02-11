class VideosController < ApplicationController

  def show
    @video = Video.friendly.find(params[:id])
    redirect_to root_path unless @video.present?
  end
end
