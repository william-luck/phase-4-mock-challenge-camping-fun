class Camper < ApplicationRecord


    validates :name, presence: true
    validates :age, numericality: { greater_than: 8, less_than: 19}

    has_many :signups
    has_many :activities, through: :signups

end
