class Video < ActiveRecord::Base
  attr_accessible :title, :host, :host_identifier, :image_url, :order, :image

  has_attached_file :image


  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
