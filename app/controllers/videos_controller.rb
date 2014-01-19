class VideosController < ApplicationController
  before_filter :redirect_unless_admin

  def edit
    @video = Video.find_by_id(params[:id])
  end

  def index
    @videos = Video.all.sort_by(&:order)
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params[:video])

    if @video.save
      redirect_to new_video_path
      flash[:notice] = "You have successfully added a video <a href='/videos/#{@video.id}/edit'>#{@video.title}</a>"
    else
      render 'new'
      flash[:notice] = "There was an issue in adding this video.  Please try again."
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
    flash[:notice] = "You have successfully deleted a video: #{@video.title}"
  end

  def update
    @video = Video.find(params[:id])

    if @video.update_attributes(params[:video])
      redirect_to videos_path
      flash[:notice] = "Successfully updated a video: #{@video.title}"
    else
      render "edit"
      flash[:notice] = "There was an issue with saving your update. Try again."
    end
  end
end
