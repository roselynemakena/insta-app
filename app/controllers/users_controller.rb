class UsersController < ApplicationController
  before_filter :find_model

  def my_profile
    @images = current_user.images
  end

  private
  def find_model
    @model = User.find(params[:id]) if params[:id]
  end
end