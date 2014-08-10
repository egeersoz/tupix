class CreateSubmissionPictures < ActiveRecord::Migration
  def change
    create_table :submission_pictures do |t|
      t.integer :submission_id
      t.integer :picture_id
      t.timestamps
    end
  end
end
