class Ticket < ApplicationRecord
  belongs_to :train
  #belongs_to :user
  belongs_to :start_station, class_name: 'RailwayStation'
  belongs_to :end_station, class_name: 'RailwayStation'

  validates :passenger_name, presence: true
  validates :passport_number, presence: true
end
