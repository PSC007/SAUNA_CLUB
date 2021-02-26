class Review < ApplicationRecord
  belongs_to :sauna
  belongs_to :user
  validates :content, length: { minimum: 20 }
end
