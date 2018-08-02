class BikepostsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :set_bikepost, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :new, :create]

  # GET /bikeposts
  # GET /bikeposts.json
  def index
    @bikeposts = Bikepost.all
    # search new code here (Current cart)
    st
  end

  # GET /bikeposts/1
  # GET /bikeposts/1.json
  def show
    st
  end

  # GET /bikeposts/new
  def new
    @bikepost = Bikepost.new
    st
  end

  # GET /bikeposts/1/edit
  def edit
    st    
  end

  # POST /bikeposts
  # POST /bikeposts.json
  def create
    @bikepost = Bikepost.new(bikepost_params)

    respond_to do |format|
      if @bikepost.save
        format.html { redirect_to bikeposts_path, notice: 'Bikepost was successfully created.' }
        format.json { render :show, status: :created, location: @bikepost }
      else
        format.html { render :new }
        format.json { render json: @bikepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bikeposts/1
  # PATCH/PUT /bikeposts/1.json
  def update
    respond_to do |format|
      if @bikepost.update(bikepost_params)
        format.html { redirect_to @bikepost, notice: 'Bikepost was successfully updated.' }
        format.json { render :show, status: :ok, location: @bikepost }
      else
        format.html { render :edit }
        format.json { render json: @bikepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bikeposts/1
  # DELETE /bikeposts/1.json
  def destroy
    @bikepost.destroy
    respond_to do |format|
      format.html { redirect_to bikeposts_url, notice: 'Bikepost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bikepost
      @bikepost = Bikepost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bikepost_params
      params.require(:bikepost).permit(:title, :address, :description, :oblast, :city, :status)
    end
  end
