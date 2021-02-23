class Sauna < ApplicationRecord
  belongs_to :user
  validates :seat, :temperature, :description, presence: true
  has_one_attached :photo
end
