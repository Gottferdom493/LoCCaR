class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    # if
      @booking.save
      # flash[:notice] = "Vous avez-bien réservé votre #{@car.marque} #{@car.modele} ! Merci pour votre confiance"
      redirect_to new_car_booking_path(), notice: "Booking has been added"
    # else
      # render :new
    # end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
