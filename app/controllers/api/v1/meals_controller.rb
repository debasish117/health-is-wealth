class Api::V1::MealsController < Api::V1::ApplicationController
  def index
    @meals = Meals.all
    render json: @meals
  end
end
