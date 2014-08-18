class AddAttachmentFileToComposites < ActiveRecord::Migration
  def self.up
    change_table :composites do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :composites, :file
  end
end
