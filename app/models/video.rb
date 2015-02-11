class Video < ActiveRecord::Base
  validates_presence_of :title, :host, :host_identifier, :image_url, :order

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :still
  validates_attachment_content_type :still, :content_type => /\Aimage\/.*\Z/


end
