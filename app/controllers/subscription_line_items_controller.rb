class SubscriptionLineItemsController < ApplicationController
  before_action :set_subscription

  def create
    @subscription_line_item = @subscription.subscription_line_items
                                .find_or_create_by(
                                  subscription_line_item_params
                                )
    redirect_to edit_subscription_path(@subscription), notice: "Line item created"
  end

  def destroy
    @subscription_line_item = @subscription.subscription_line_items
                                .find_by(id: params[:id])
    @subscription_line_item.destroy
    redirect_to edit_subscription_path(@subscription), notice: "Line item destroyed"
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:subscription_id])
  end

  def subscription_line_item_params
    params.require(:subscription_line_item).permit(:medication_id)
  end

end
