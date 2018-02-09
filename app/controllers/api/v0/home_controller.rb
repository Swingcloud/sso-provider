class Api::V0::HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    render :json, {congrats: 'it works!'}
  end
end
