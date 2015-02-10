class Video < ActiveRecord::Base
  attr_accessible :title, :host, :host_identifier, :image_url, :order

end
