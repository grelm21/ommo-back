class Contract < ApplicationRecord
  has_many :partners

  before_create :generate_serial_number

  private

  def generate_serial_number
    self.serial_number = SecureRandom.hex(4)
  end
end
