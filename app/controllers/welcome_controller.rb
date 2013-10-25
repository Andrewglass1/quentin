class WelcomeController < ApplicationController

  VIDEOS = [
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"},
            {:vimeo_id => 77183634, :image => "http://b.vimeocdn.com/ts/452/295/452295896_640.jpg", :title => "Bad Medicine"}
           ]

  def index
    @videos = Video.all
  end

  def new
    @videos = VIDEOS
  end
end
