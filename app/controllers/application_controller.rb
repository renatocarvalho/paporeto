class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_categories

  layout :layout_for_devise

  def layout_for_devise
    'admin' if params[:controller] =~ /devise/
  end

  def set_categories
    @categories = Category.all
  end

end
