class OrdersController < ApplicationController

  def index
    if current_user
      @orders = current_user.orders.all
    else
      @orders = Order.all
    end
  end

  def new
    if current_user
      @order = current_user.orders.new
    else
      @order = Order.new
    end
  end

  def create
    order = Order.create
    redirect_to order_path(order)
  end

  def show
  end

  def edit
  end

  def update
    @order.update(order_params)
    redirect_to @order
  end

  def destroy

  end

  private

  def order_parms
    params.require(:order).permit()
  end

end
