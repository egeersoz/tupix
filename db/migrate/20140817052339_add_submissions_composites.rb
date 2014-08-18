class AddSubmissionsComposites < ActiveRecord::Migration
  def change
  	create_table :submission_composites do |t|
  	  t.integer :submission_id
  	  t.integer :composite_id
  	  t.timestamps
  	end
  end
end
