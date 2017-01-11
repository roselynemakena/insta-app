class Api::V1::BaseController < ApplicationController
protect_from_forgery with: :null_session

before_action :destroy_session

  def destroy_session
    request.sessions_options[:skip]= true

    
  end

  def show
    user = User.find(params[:id])
    render(json: Api::V1::UserSerializer.new(user).to_json)
    
  end
end