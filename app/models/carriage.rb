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

  scope :sorted_up, -> { order(number: :asc) }
  scope :sorted_down, -> { order(number: :desc) }

  private

  def set_number
    self.number ||= train.carriages.maximum(:number).to_i + 1
  end
end
