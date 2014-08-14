class SubmissionsController < ApplicationController
  def new
    @new_submission = Submission.new
    2.times { @new_submission.images.build }
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to submission_path(@submission)
    else
      flash[:error] = "Oops! Something didn't work..."
      redirect_to :back
    end
  end

  def index
    @new_submission = Submission.new
    2.times { @new_submission.images.build }
  end

  def show
    @new_submission = Submission.new
    2.times { @new_submission.images.build }
    
    @submission = Submission.find(params[:id])
    @images = @submission.images.to_a
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

    def submission_params
      params.require(:submission).permit(:name, images_attributes: [:file, :label])
    end
end
