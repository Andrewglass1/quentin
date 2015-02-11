class AddStillToVideo < ActiveRecord::Migration
  def change
    add_attachment :videos, :still
  end
end
