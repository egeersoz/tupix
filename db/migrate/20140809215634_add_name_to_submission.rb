class AddNameToSubmission < ActiveRecord::Migration
  def change
  	add_column :submissions, :name, :text
  end
end
