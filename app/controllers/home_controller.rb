class HomeController < ApplicationController
  def index
  end

  def signout
    sign_out @user
    redirect_to root_path
  end
end
