class Car < ApplicationRecord

  validates :marque, :modele, :adresse, :prix, presence: true

end
