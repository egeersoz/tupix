# == Schema Information
#
# Table name: submission_composites
#
#  id            :integer          not null, primary key
#  submission_id :integer
#  composite_id  :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class SubmissionComposite < ActiveRecord::Base

  belongs_to :submission
  belongs_to :composite
	
end
