class Car < ApplicationRecord

  validates :marque, :modele, :adresse, :prix, presence: true

  belongs_to :user
  has_many :bookings, dependent: :destroy

end
