class Api::V1::MealsController < ApplicationController
  def index
    @meals = Meals.all
    render json: @meals
  end
end
