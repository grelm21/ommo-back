class Partner < ApplicationRecord
  belongs_to :contract, optional: true
  belongs_to :promise

  validates :name, presence: true
end
