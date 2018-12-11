class Subscription < ApplicationRecord
  has_many :subscription_line_items, dependent: :destroy
  has_many :medications, through: :subscription_line_items
  belongs_to :user

  def line_item_for(medication)
    SubscriptionLineItem.find_by(
      subscription: self,
      medication:   medication
    )
  end
end
