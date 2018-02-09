class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    render :json, {congrats: 'it works!'}
  end
end
