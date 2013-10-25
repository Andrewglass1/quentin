class WelcomeController < ApplicationController

  VIDEOS = [{:video => "https://vimeo.com/77183634&output=embed", :image => "http://assets.nydailynews.com/polopoly_fs/1.1329359!/img/httpImage/image.jpg_gen/derivatives/landscape_635/geno28s-2-web.jpg"},
            {:video => "https://vimeo.com/77183634", :image => "http://assets.nydailynews.com/polopoly_fs/1.1329359!/img/httpImage/image.jpg_gen/derivatives/landscape_635/geno28s-2-web.jpg"},
            {:video => "https://vimeo.com/77183634", :image => "http://assets.nydailynews.com/polopoly_fs/1.1329359!/img/httpImage/image.jpg_gen/derivatives/landscape_635/geno28s-2-web.jpg"},
            {:video => "https://vimeo.com/77183634", :image => "http://assets.nydailynews.com/polopoly_fs/1.1329359!/img/httpImage/image.jpg_gen/derivatives/landscape_635/geno28s-2-web.jpg"},
            {:video => "https://vimeo.com/77183634", :image => "http://assets.nydailynews.com/polopoly_fs/1.1329359!/img/httpImage/image.jpg_gen/derivatives/landscape_635/geno28s-2-web.jpg"},
            {:video => "https://vimeo.com/77183634", :image => "http://assets.nydailynews.com/polopoly_fs/1.1329359!/img/httpImage/image.jpg_gen/derivatives/landscape_635/geno28s-2-web.jpg"}
            ]
  def index
    @videos = Video.all
  end

  def new
    @videos = VIDEOS
  end
end
