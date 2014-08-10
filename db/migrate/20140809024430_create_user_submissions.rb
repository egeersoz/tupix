class CreateUserSubmissions < ActiveRecord::Migration
  def change
    create_table :user_submissions do |t|
      t.integer :submission_id
      t.integer :user_id

      t.timestamps
    end
  end
end
