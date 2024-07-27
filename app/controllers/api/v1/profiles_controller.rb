class Api::V1::ProfilesController < Api::V1::ApplicationController
  def index
    @profiles = Profile.all
    render json: @profiles
  end
end
