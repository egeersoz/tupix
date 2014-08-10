# == Schema Information
#
# Table name: submission_images
#
#  id            :integer          not null, primary key
#  submission_id :integer
#  image_id      :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class SubmissionImage < ActiveRecord::Base

  belongs_to :submission
  belongs_to :image

end
