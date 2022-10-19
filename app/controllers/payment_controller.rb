class PaymentController < ApplicationController
  def show
    @order_items = current_order.order_items
  end
  def new
    @order_items = current_order.order_items
  end

end
