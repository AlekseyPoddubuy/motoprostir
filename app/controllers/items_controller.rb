class ItemsController < ApplicationController
  layout "admins", except: [:show]
  include CurrentCart
  before_action :set_cart
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show]

  # GET /items
  # GET /items.json
  def index
    @categories = Category.all
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
   @item = Item.find params[:id]
   @photos = Photo.all
   @fastorder = Fastorder.new
 end

  # GET /items/new
  def new
    @item = Item.new
    @item.photos.build 
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
    5.times { @item.photos.build }
  end

  def who_bought
    @item = Item.find(params[:id])
    respond_to do |format|
      format.atom
      format.xml { render :xml => @item }
    end
  end
  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }

        @items = Item.all
        ActionCable.server.broadcast 'items',
        html: render_to_string('pages/index', layout: false)
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :metatitle, :metadescription, :metakeywords, :price, :publish, :quantity, :category_id, :avatar, :company, :body, :sku, :size, photos_attributes: [:id, :avatar, :_destroy])
    end
  end
