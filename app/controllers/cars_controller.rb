class CarsController < ApplicationController

def index
  @cars = Car.all
end

private

def car_params
  params.require(:car).permit(:marque, :modele, :adresse, :prix)
end

end
