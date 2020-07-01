class Content < ApplicationRecord
  belongs_to :user
  validates :payment, presence: true, inclusion: 1..9999999
  validates :place, presence: true
  validates :rockpaperscissors, presence: true
end
