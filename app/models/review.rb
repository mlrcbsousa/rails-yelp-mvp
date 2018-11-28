class Review < ApplicationRecord
  # rating should be a number between 0 and 5 (FAILED - 10)
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }

  belongs_to :restaurant
end
