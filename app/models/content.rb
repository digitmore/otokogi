class Content < ApplicationRecord
  belongs_to :user
  validates :payment, presence: true
  validates :place, presence: true
  validates :rockpaperscissors, presence: true
end
