class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: { scope: :train_id }

  before_validation :set_number

  scope :economy, -> { where(type: 'EconomyCarriage') }
  scope :coupe, -> { where(type: 'CoupeCarriage') }
  scope :luxe, -> { where(type: 'LuxeCarriage') }
  scope :sitting, -> { where(type: 'SittingCarriage') }
  scope :ordered, -> { order(:number) }

  private

  def set_number
    self.number = if train.carriages.count.zero?
                    1
                  else
                    train.carriages.last.number + 1
                  end
  end
end
