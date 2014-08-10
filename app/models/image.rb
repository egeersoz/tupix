# == Schema Information
#
# Table name: images
#
#  id                :integer          not null, primary key
#  name              :text
#  label             :text
#  created_at        :datetime
#  updated_at        :datetime
#  file_file_name    :string(255)
#  file_content_type :string(255)
#  file_file_size    :integer
#  file_updated_at   :datetime
#

class Image < ActiveRecord::Base

  has_one :submission_image
  has_one :submission, through: :submission_image

  has_attached_file :file, 
  					:styles => { :medium => "550x550>", :thumb => "100x100>" }, 
  					:storage => :s3,
                    s3_credentials: {
                      access_key_id: ENV['AWS_ACCESS_KEY'],
                      secret_access_key: ENV['AWS_SECRET_KEY']
                      },
                    :url => "/images/:id/:style_:basename.:extension",
                    :path => "/images/:id/:style_:basename.:extension",
                    :bucket => ENV['AWS_BUCKET']

  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

end
