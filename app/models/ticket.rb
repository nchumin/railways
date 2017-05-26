class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :user
  belongs_to :start_station, class_name: 'RailwayStation'
  belongs_to :end_station, class_name: 'RailwayStation'

  validates :passenger_name, presence: true
  validates :passport_number, presence: true

  after_create :send_buy_notification
  after_destroy :send_return_notification

  def route_name
    "#{start_station.name} - #{end_station.name}"
  end

  private

  def send_buy_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_return_notification()
    TicketsMailer.return_ticket(self.user, self).deliver_now
  end
end
