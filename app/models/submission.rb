# == Schema Information
#
# Table name: submissions
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :text
#

class Submission < ActiveRecord::Base

  has_many :images, through: :submission_images
  has_many :submission_images
  accepts_nested_attributes_for :images

end
