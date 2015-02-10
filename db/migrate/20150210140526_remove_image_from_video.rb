class RemoveImageFromVideo < ActiveRecord::Migration

  def change
    remove_column :videos, :image_file_name
    remove_column :videos, :image_content_type
    remove_column :videos, :image_file_size
    remove_column :videos, :image_updated_at
  end
end
