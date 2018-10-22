class CreateSubscriptionLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :subscription_line_items do |t|
      t.references :medication, foreign_key: true
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
