class RenamePictureColumn < ActiveRecord::Migration
  def change
  	rename_column :submission_images, :picture_id, :image_id
  end
end
