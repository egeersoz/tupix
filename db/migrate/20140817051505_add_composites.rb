class AddComposites < ActiveRecord::Migration
  def change
  	create_table :composites do |t|
  	  t.timestamps
  	end
  end
end
