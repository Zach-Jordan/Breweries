class Brewery < ApplicationRecord
  has_many :beers
  validates :brewery_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :brewery_type, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :website, presence: true
end
