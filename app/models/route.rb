class Route < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 5}
  has_and_belongs_to_many :railway_stations
  has_many :trains
end
