# == Schema Information
#
# Table name: submission_pictures
#
#  id            :integer          not null, primary key
#  submission_id :integer
#  picture_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class SubmissionPicture < ActiveRecord::Base

  belongs_to :submission
  belongs_to :picture

end
