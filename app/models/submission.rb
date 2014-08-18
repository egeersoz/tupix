# == Schema Information
#
# Table name: submissions
#
#  id         :integer          not null, primary key
#  name       :text             default("")
#  slug       :text             default("")
#  created_at :datetime
#  updated_at :datetime
#

class Submission < ActiveRecord::Base

  has_one :composite, through: :submission_composite
  has_one :submission_composite

  has_many :pictures, through: :submission_pictures
  has_many :submission_pictures

  accepts_nested_attributes_for :pictures

  before_create :generate_slug

  private

    def generate_slug
      self.slug = SecureRandom.urlsafe_base64(8)
    end

end
