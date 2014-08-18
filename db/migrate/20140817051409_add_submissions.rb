class AddSubmissions < ActiveRecord::Migration
  def change
  	create_table :submissions do |t|
  	  t.text :name, default: ""
  	  t.text :slug, default: ""
  	  t.timestamps
  	end

  	add_index :submissions, :slug, unique: true
  end
end
