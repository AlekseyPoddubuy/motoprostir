class LineProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_line_product, only: [:show, :edit, :update, :destroy]

  # GET /line_products
  # GET /line_products.json
  def index
    @line_products = LineProduct.all
  end



  # GET /line_products/1
  # GET /line_products/1.json
  def show
  end

  # GET /line_products/new
  def new
    @line_product = LineProduct.new
  end

  # GET /line_products/1/edit
  def edit
  end

  # POST /line_products
  # POST /line_products.json

  def create
    item = Item.find(params[:item_id])
    @line_product = @cart.add_item(item)

    respond_to do |format|
      if @line_product.save
        format.html { redirect_to @line_product.item, notice: ' у Вашому кошику' }
        format.json { render :show, status: :created, location: @line_product }
      else
        format.html { render :new }
        format.json { render json: @line_product.errors, status: :unprocessable_entity }
      end
    end
  # PATCH/PUT /line_products/1
  # PATCH/PUT /line_products/1.json
#end

end


def add_quantity
  @line_product = LineProduct.find(params[:id])
  @line_product.quantity += 1
  @line_product.save
  redirect_to cart_path(current_cart), notice: 'товар додано'  
end

def reduce_quantity
  @line_product = LineProduct.find(params[:id])
  if @line_product.quantity > 1
    @line_product.quantity -= 1
  end

  respond_to do |format|
    if @line_product.save
      format.html { redirect_to cart_path(current_cart), notice: 'товар видалено' }
      format.js
      format.json { render :show, status: :ok, location: @line_product }
    else
     'ololo'
   end
 end

 # @line_product.save
  #redirect_to cart_path(@current_cart)
end


def update
  respond_to do |format|
    if @line_product.update(line_product_params)
      format.html { redirect_to cart_path(@current_cart), notice: 'Товар вилучено з вашого персонального кошику' }
      format.json { render :show, status: :ok, location: @line_product }
    else
      format.html { render :edit }
      format.json { render json: @line_product.errors, status: :unprocessable_entity }
    end
  end
end



  # DELETE /line_products/1
  # DELETE /line_products/1.json



  def destroy
    @line_product.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(current_cart), notice: 'Товар вилучено з вашого персонального кошику' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_product
      @line_product = LineProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_product_params
      params.require(:line_product).permit(:item_id, :quantity, :cart_id)
    end
  end
