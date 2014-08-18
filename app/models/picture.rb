# == Schema Information
#
# Table name: pictures
#
#  id                :integer          not null, primary key
#  label             :text             default("")
#  created_at        :datetime
#  updated_at        :datetime
#  file_file_name    :string(255)
#  file_content_type :string(255)
#  file_file_size    :integer
#  file_updated_at   :datetime
#

class Picture < ActiveRecord::Base

  has_one :submission_picture
  has_one :submission, through: :submission_picture

  has_attached_file :file, 
          					:styles => { :medium => "550x550>", :thumb => "100x100>" }, 
          					:storage => :s3,
                    s3_credentials: {
                      access_key_id: ENV['AWS_ACCESS_KEY'],
                      secret_access_key: ENV['AWS_SECRET_KEY']
                      },
                    :url => "/image_uploads/:id/:style_:basename.:extension",
                    :path => "/image_uploads/:id/:style_:basename.:extension",
                    :bucket => ENV['AWS_BUCKET']

  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

  before_create :randomize_file_name

  private

  def randomize_file_name
    extension = File.extname(file_file_name).downcase
    self.file.instance_write(:file_name, "#{SecureRandom.hex(16)}#{extension}")
  end

end
