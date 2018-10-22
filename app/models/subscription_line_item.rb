class SubscriptionLineItem < ApplicationRecord
  belongs_to :medication
  belongs_to :subscription
end
