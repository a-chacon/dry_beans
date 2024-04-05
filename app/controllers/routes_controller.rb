class RoutesController < ApplicationController
  def index
    @routes = Route.all

    render json: @routes.as_json
  end

  def show
    @route = Route.where(id: params[:id]).includes(trips: [:operations]).first!

    render json: @route.as_json(include: { trips: { include: :operations } })
  rescue ActiveRecord::RecordNotFound => e
    render json: { success: false, message: e }
  end
end
