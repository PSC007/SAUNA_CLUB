class Sauna < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  validates :name, :seat, :temperature, :description, presence: true
  validates :name, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
