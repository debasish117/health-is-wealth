class Api::V1::ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    render json: @profiles
  end
end
