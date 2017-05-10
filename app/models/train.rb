class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  def count_carriages(c_type)
    carriages.where(c_type: c_type).count
  end

  def count_top_seats(c_type)
    carriages.where(c_type: c_type).sum('top_seats')
  end

  def count_bottom_seats(c_type)
    carriages.where(c_type: c_type).sum('bottom_seats')
  end
end
