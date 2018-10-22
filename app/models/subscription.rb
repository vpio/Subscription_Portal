class Subscription < ApplicationRecord
  has_many :subscription_line_items
  has_many :medications, through: :subscription_line_items
end
