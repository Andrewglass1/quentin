class WelcomeController < ApplicationController

  VIDEOS = [
            {:type => "vimeo", :id => 77183634, :image => "https://s3.amazonaws.com/lindseyeve/bad_medicine.png", :title => "Bad Medicine"},
            {:type => "vimeo", :id => 77814644, :image => "https://s3.amazonaws.com/lindseyeve/the_collection.png", :title => "The Collection"},
            # {:type => "vimeo", :id => , :image => "https://s3.amazonaws.com/lindseyeve/last_film_festival.png", :title => "The Last Film Festival Promo"},
            {:type => "vimeo", :id => 77189031, :image => "https://s3.amazonaws.com/lindseyeve/graphics_reel.png", :title => "Graphics Reel"},
            {:type => "youtube", :id => "oLn54cqwlI8", :image => "https://s3.amazonaws.com/lindseyeve/house_i_live_in.png", :title => "The House I Live In Q & A"},
            {:type => "youtube", :id => "96oZnzLjcL8", :image => "https://s3.amazonaws.com/lindseyeve/bikes.png", :title => "<3 Bikes Vol. 1"},
           ]

  def index
    @videos = VIDEOS
  end
end
