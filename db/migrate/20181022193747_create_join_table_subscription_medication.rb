class CreateJoinTableSubscriptionMedication < ActiveRecord::Migration[5.2]
  def change
    create_join_table :subscriptions, :medications do |t|
      # t.index [:subscription_id, :medication_id]
      # t.index [:medication_id, :subscription_id]
    end
  end
end
