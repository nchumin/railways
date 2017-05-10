class CoupeCarriage < Carriage
  validation :top_seats, :bottom_seats, presence: true
end
