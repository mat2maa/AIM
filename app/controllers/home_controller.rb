class HomeController < ApplicationController
  def index
    @users = User.all
    @current_user_order_count = current_user.user_profile.airline.orders.count
  end
end
