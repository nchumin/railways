class CoupeCarriage < Carriage
  validates :top_seats, :bottom_seats, presence: true
end
