module ApplicationHelper

  # Returns the full title on a per-page basis
  #
  def full_title(page_title)
    base_title = "Tupix"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Used to style flash messages based on their type
  #
  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-danger"
      when :alert then "alert alert-danger"
    end
  end

  # Used to determine if an element on the page should have active styling.
  #
  def is_active?(action)
    if current_page?(action: action)
      "active"
    else
      ""
    end
  end

  # Checks if the given user is the currently signed in user.
  #
  def current_user?(user)
    user == current_user
  end

  # A before_action method used to check if the user that initiates the action is the currently signed in user.
  #
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  #Used to create the submission and its two picture associations for the modal
  #form in the header.
  #
  def create_form_objects
    @new_submission = Submission.new
    2.times { @new_submission.pictures.build }
  end

end
