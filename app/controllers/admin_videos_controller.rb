class AdminVideosController < ApplicationController
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
    @video = Video.new(video_params)

    if @video.save
      redirect_to new_admin_video_path
      flash[:notice] = "You have successfully added a video <a href='/admin_videos/#{@video.id}/edit'>#{@video.title}</a>"
    else
      render 'new'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to admin_videos_path
    flash[:notice] = "You have successfully deleted a video: #{@video.title}"
  end

  def update
    @video = Video.find(params[:id])
    @video.update_attributes(video_params)

    if @video.save
      redirect_to admin_videos_path
      flash[:notice] = "Successfully updated a video: #{@video.title}"
    else
      render "edit"
    end
  end

private

  def video_params
    params.require(:video).permit(:title, :host, :host_identifier, :image_url, :order)
  end
end
