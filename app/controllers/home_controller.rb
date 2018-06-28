class HomeController < ApplicationController
  def index
  	@user = User.new(email: current_user.email)
  	UserMailer.welcome_email(@user).deliver
  end
end
