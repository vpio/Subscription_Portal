class Medication < ApplicationRecord
  has_many :subscription_line_items
  has_many :subscriptions, through: :subscription_line_items
end
