class CustMobilesController < ApplicationController
  before_action :set_cust_mobile, only: [:show, :edit, :update, :destroy]

  # GET /cust_mobiles
  # GET /cust_mobiles.json
  def index
    @cust_mobiles = CustMobile.all
  end

  # GET /cust_mobiles/1
  # GET /cust_mobiles/1.json
  def show
  end

  # GET /cust_mobiles/new
  def new
    @cust_mobile = CustMobile.new
  end

  # GET /cust_mobiles/1/edit
  def edit
  end

  # POST /cust_mobiles
  # POST /cust_mobiles.json
  def create
    @cust_mobile = CustMobile.new(cust_mobile_params)

    respond_to do |format|
      if @cust_mobile.save
        format.html { redirect_to @cust_mobile, notice: 'Cust mobile was successfully created.' }
        format.json { render :show, status: :created, location: @cust_mobile }
      else
        format.html { render :new }
        format.json { render json: @cust_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cust_mobiles/1
  # PATCH/PUT /cust_mobiles/1.json
  def update
    respond_to do |format|
      if @cust_mobile.update(cust_mobile_params)
        format.html { redirect_to @cust_mobile, notice: 'Cust mobile was successfully updated.' }
        format.json { render :show, status: :ok, location: @cust_mobile }
      else
        format.html { render :edit }
        format.json { render json: @cust_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cust_mobiles/1
  # DELETE /cust_mobiles/1.json
  def destroy
    @cust_mobile.destroy
    respond_to do |format|
      format.html { redirect_to cust_mobiles_url, notice: 'Cust mobile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cust_mobile
      @cust_mobile = CustMobile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cust_mobile_params
      params.require(:cust_mobile).permit(:mses_id, :seller_id, :buyer_id, :invoice_id)
    end
end
