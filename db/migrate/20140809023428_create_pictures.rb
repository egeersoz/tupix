class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :name
      t.text :label

      t.timestamps
    end
  end
end
