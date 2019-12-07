class ItaqntesmtsController < ApplicationController
  before_action :set_itaqntesmt, only: [:show, :edit, :update, :destroy]

  # GET /itaqntesmts
  # GET /itaqntesmts.json

  def index
    unless params[:storename] == nil 
      @sel_storename = params[:storename]
      @sel_stores = Store.where("storename like ?", "%#{params[:storename]}%").order("id")
    else
      @sel_storename = nil
      @sel_stores = nil
    end
    @itaqntesmts = Itaqntesmt.all.order("store_id, dtype_id")
  end 
  # GET /itaqntesmts/1
  # GET /itaqntesmts/1.json
  def show
  end

  # GET /itaqntesmts/new
  def new
    @itaqntesmt = Itaqntesmt.new
  end

  # GET /itaqntesmts/1/edit
  def edit
  end

  # POST /itaqntesmts
  # POST /itaqntesmts.json
  def create
    @itaqntesmt = Itaqntesmt.new(itaqntesmt_params)

    respond_to do |format|
      if @itaqntesmt.save
        format.html { redirect_to @itaqntesmt, notice: 'Itaqntesmt was successfully created.' }
        format.json { render :show, status: :created, location: @itaqntesmt }
      else
        format.html { render :new }
        format.json { render json: @itaqntesmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itaqntesmts/1
  # PATCH/PUT /itaqntesmts/1.json
  def update
    respond_to do |format|
      if @itaqntesmt.update(itaqntesmt_params)
        format.html { redirect_to @itaqntesmt, notice: 'Itaqntesmt was successfully updated.' }
        format.json { render :show, status: :ok, location: @itaqntesmt }
      else
        format.html { render :edit }
        format.json { render json: @itaqntesmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itaqntesmts/1
  # DELETE /itaqntesmts/1.json
  def destroy
    @itaqntesmt.destroy
    respond_to do |format|
      format.html { redirect_to itaqntesmts_url, notice: 'Itaqntesmt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itaqntesmt
      @itaqntesmt = Itaqntesmt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itaqntesmt_params
      params.require(:itaqntesmt).permit(:store_id, :dtype_id, :qntesmt)
    end
end
