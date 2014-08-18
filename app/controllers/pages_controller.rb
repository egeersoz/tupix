class PagesController < ApplicationController
  
  def terms
  	@new_submission = Submission.new
    2.times { @new_submission.pictures.build }
  end

  def privacy
  	@new_submission = Submission.new
    2.times { @new_submission.pictures.build }
  end
end
