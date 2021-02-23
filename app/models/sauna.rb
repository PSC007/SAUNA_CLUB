class Sauna < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :seat, :temperature, :description, presence: true
  validates :name, uniqueness: true
end
