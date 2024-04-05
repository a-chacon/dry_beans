class OperationsController < ApplicationController
  before_action :set_trip

  def create
    @operation = @trip.operations.new(operation_params)

    if @operation.save
      render json: @operation.as_json, status: :created
    else
      render json: @operation.errors, status: :unprocessable_entity
    end
  end

  private

  def operation_params
    params.require(:operation).permit(:status, :recipient_name, :sender_name, :address, :operation_time,
                                      :operation_type)
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end
