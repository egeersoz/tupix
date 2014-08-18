# == Schema Information
#
# Table name: composites
#
#  id                :integer          not null, primary key
#  created_at        :datetime
#  updated_at        :datetime
#  file_file_name    :string(255)
#  file_content_type :string(255)
#  file_file_size    :integer
#  file_updated_at   :datetime
#

require 'RMagick'
include Magick

class Composite < ActiveRecord::Base

	has_one :submission_composite
	has_one :submission, through: :submission_composite

	has_attached_file :file, 
  					:storage => :s3,
  					:styles => { :medium => "1100x1100>" },
                    s3_credentials: {
                      access_key_id: ENV['AWS_ACCESS_KEY'],
                      secret_access_key: ENV['AWS_SECRET_KEY']
                      },
                    :url => "/images/:id/:style_:basename.:extension",
                    :path => "/images/:id/:style_:basename.:extension",
                    :bucket => ENV['AWS_BUCKET']

    validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

    def generate(image1, image2)
      image_list = Magick::ImageList.new(image1, image2)
      composite_image = image_list.append(false).write('composite.jpg')
      File.new(composite_image.filename)
    end

end
