class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to new_car_booking_path(), notice: "Booking has been added"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
