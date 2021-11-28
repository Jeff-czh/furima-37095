class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :ship_fee
  belongs_to :ship_area
  belongs_to :ship_days

  belongs_to :user
  # has_one :order
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name, length: { maximum: 40 }
    validates :description, length: { maximum: 1000 }
    validates :category_id
    validates :status_id
    validates :ship_fee_id
    validates :ship_area_id
    validates :ship_days_id
    validates :user
    validates :price, numericality: { only_integer: true, greater_than: 299, less_than: 10_000_000 }
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :status_id
    validates :ship_fee_id
    validates :ship_area_id
    validates :ship_days_id
  end
end
