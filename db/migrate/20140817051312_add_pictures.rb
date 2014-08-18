class AddPictures < ActiveRecord::Migration
  def change
  	create_table :pictures do |t|
  	  t.text :label, default: ""
  	  t.timestamps
  	end
  end
end
