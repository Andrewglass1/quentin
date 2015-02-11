class RemoveImageUrlFromVideo < ActiveRecord::Migration
  def change
    remove_column :videos, :image_url
  end
end
