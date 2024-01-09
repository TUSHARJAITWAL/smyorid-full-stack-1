class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :current_cart

  private

  def current_cart
    @current_cart ||= current_user&.cart
  end
end
