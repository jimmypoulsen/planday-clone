class ApplicationController < ActionController::Base
  include SessionsHelper
  helper :all
  protect_from_forgery with: :exception
  before_action :set_context
end
