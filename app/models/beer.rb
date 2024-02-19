class Beer < ApplicationRecord
  belongs_to :brewery
  validates :brewery_id, presence: true
  validates :beer_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :style, presence: true
  validates :abv, presence: true
end

