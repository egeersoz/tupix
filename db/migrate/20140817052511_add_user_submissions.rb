class AddUserSubmissions < ActiveRecord::Migration
  def change
  	create_table :user_submissions do |t|
  	  t.integer :user_id
  	  t.integer :submission_id
  	  t.timestamps
  	end
  end
end
