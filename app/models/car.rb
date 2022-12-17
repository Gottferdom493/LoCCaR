class Car < ApplicationRecord

  validates :marque, :modele, :adresse, :prix, presence: true

  has_many :bookings, dependent: :destroy

end
