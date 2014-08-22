class SubmissionsController < ApplicationController

  before_action :create_form_objects, except: [:create, :delete]

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      @composite = Composite.new
      @comp_file = @composite.
                   generate(params[:submission][:pictures_attributes]["0"][:file].tempfile.open,
                            params[:submission][:pictures_attributes]["1"][:file].tempfile.open)
      @composite.file = @comp_file
      if @composite.save
        if user_signed_in?
          @submission.create_user_submission(user_id: current_user.id)
        end
        @submission.create_submission_composite(composite_id: @composite.id)
        redirect_to show_submission_path(@submission.slug)
      end
    else
      flash[:error] = "Oops! Something didn't work..."
      redirect_to :back
    end
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
  end

  private

    def submission_params
      params.require(:submission).permit(:name, pictures_attributes: [:file, :label])
    end

end
