class Review < ApplicationRecord
  belongs_to :sauna
  validates :content, presence: true
end
