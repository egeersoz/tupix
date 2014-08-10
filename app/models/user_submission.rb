# == Schema Information
#
# Table name: user_submissions
#
#  id            :integer          not null, primary key
#  submission_id :integer
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class UserSubmission < ActiveRecord::Base

	belongs_to :user
	belongs_to :submission

end
