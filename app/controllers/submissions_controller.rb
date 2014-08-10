class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new
    2.times { @submission.images.build }
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      flash[:success] = "Yay"
      redirect_to submission_path(@submission)
    else
      flash[:error] = "Oops"
      redirect_to :back
    end
  end

  def index
  end

  def show
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
      params.require(:submission).permit(:name, images_attributes: [:file])
    end
end
