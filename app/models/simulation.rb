class Simulation < ApplicationRecord
  validates :monthly_amount, numericality: { only_integer: true, greater_than: 0 }, presence: true
  validates :start_year, numericality: { only_integer: true }, presence: true
  validates :start_month, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 12 }, presence: true
  validates :end_year, numericality: { only_integer: true }, presence: true
  validates :end_month, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 12 }, presence: true
end
