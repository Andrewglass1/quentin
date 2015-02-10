class Video < ActiveRecord::Base
  validates_presence_of :title, :host, :host_identifier, :image_url, :order

end
