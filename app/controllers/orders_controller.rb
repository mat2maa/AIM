class OrdersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :only => [:index, :show, :create, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    authorize! :new, Order
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    authorize! :edit, Order
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])
    if @order.save
      session[:order_id] = @order.id
      redirect_to order_order_step_path(order_id: @order.id, id: :brandings)
    else
      render :new
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(params[:order])
      session[:order_id] = @order.id
      redirect_to order_order_step_path(order_id: @order.id, id: :brandings)
    else
      format.html { render action: "edit" }
      format.json { render json: @order.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
end
