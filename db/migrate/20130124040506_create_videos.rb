class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.string :photo
      t.string :caption

      t.timestamps
    end
  end
end
