class SubmissionsController < ApplicationController

  before_action :create_form_objects
  before_action :correct_user, only: [:destroy]

  def create
    @submission = Submission.create(submission_params)
    @composite = Composite.create(file: Composite.generate(
                                        params[:submission][:pictures_attributes]["0"][:file].tempfile.open,
                                        params[:submission][:pictures_attributes]["1"][:file].tempfile.open))
    if user_signed_in?
      @submission.create_user_submission(user_id: current_user.id)
    end
    @submission.create_submission_composite(composite_id: @composite.id)
    redirect_to show_submission_path(@submission.slug)
  end

  def index
    if user_signed_in?
      @submissions = current_user.submissions
    end
  end

  def show
    @submission = Submission.find_by_slug(params[:slug])
    @pictures = @submission.pictures.to_a
  end

  def comp
    @submission = Submission.find_by_slug(params[:slug])
    @composite = @submission.composite
  end


  def delete
    Submission.find_by_slug(params[:slug]).destroy
    flash[:success] = "Tupix deleted!"
    redirect_to root_path
  end

  private

    def submission_params
      params.require(:submission).permit(:name, pictures_attributes: [:file, :label])
    end

end
