class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :host
      t.string :host_identifier
      t.string :title
      t.string :image_url
      t.integer :order

      t.timestamps
    end
  end
end
