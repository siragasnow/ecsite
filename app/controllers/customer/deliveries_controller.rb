class Customer::DeliveriesController < ApplicationController
  def index
    @customer = Customer.find(current_customer.id)
      @delivery = Delivery.new
      @deliveries = @customer.deliveries
  end

  def create
    @delivery = Delivery.new(delivery_params)
      @delivery.customer_id = current_customer.id
      @delivery.save
      redirect_to customers_deliveries_path(@delivery.id)
  end

  def edit
    @customer = Customer.find(current_customer.id)
      @delivery = Delivery.find(params[:id])
  end

  def update
    @delivery = Delivery.find(params[:id])
      @delivery.update(delivery_params)
      redirect_to customers_deliveries_path
  end

  def destroy
    @delivery = Delivery.find(params[:id])
      @delivery.destroy
      redirect_back(fallback_location: root_path)
  end

  private
    def delivery_params
      params.require(:delivery).permit(:postal_code, :destination, :name)
    end


end