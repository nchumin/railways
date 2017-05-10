class EconomyCarriage < Carriage
  validation :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, presence: true
end
