class CreateSubmissionImages < ActiveRecord::Migration
  def change
    create_table :submission_images do |t|
      t.integer :submission_id
      t.integer :image_id
      t.timestamps
    end
  end
end
