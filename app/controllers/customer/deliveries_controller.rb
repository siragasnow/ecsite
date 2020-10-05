class Customer::DeliveriesController < ApplicationController
  def index
    @delivery = Delivery.new
    @deliveries = current_customer.deliveries
  end

  def create
    @deliveries = current_customer.deliveries
    @delivery = Delivery.new
  end

  def edit
  end

  def update
  end

  def destory
  end
end
