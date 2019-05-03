class Client < ApplicationRecord
  validates_uniqueness_of :email
  belongs_to :economic_sector, optional: true
  has_many :buys, class_name: 'Sale'
end
