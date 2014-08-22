class ApplicationController < ActionController::Base

  include ApplicationHelper

  before_action :create_form_objects, except: [:create, :update, :delete]
  protect_from_forgery with: :exception

end
