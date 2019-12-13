class ItassetsController < ApplicationController
  before_action :set_itasset, only: [:show, :edit, :update, :destroy]

  def itaps
    if params[:store_id]  == "0" || params[:store_id]  == nil
      @itassets = Itasset.all
      @itaqntesmts = Itaqntesmt.all
      @sel_storename = "ALL"
      @sel_store_id = 0
    else
      @itassets = Itasset.where(store_id: params[:store_id])
      @itaqntesmts = Itaqntesmt.where(store_id: params[:store_id])
      @sel_storename = Store.find(params[:store_id]).storename
      @sel_store_id = params[:store_id]
    end
    @dtypes = Dtype.all.order(:priority)
  end

  # GET /itassets
  # GET /itassets.json
  def index
    @orderkey = params[:orderkey]
    if @orderkey == nil
      @orderkey = "store_id"
    end
    if params[:store_id] == "0" || params[:store_id] == nil
      @sel_storename = "ALL"
      @sel_store_id = 0
      @itassets = Itasset.all.order(@orderkey).paginate(page: params[:page], per_page: 10)
    else
      @sel_storename = Store.find(params[:store_id]).storename
      @sel_store_id = params[:store_id]
      @itassets = Itasset.where(store_id: params[:store_id]).order(@orderkey).\
                  paginate(page: params[:page], per_page: 10)
    end
    #@itassets = Itasset.all
    #@itassets = Itasset.all.order(@orderkey).paginate(page: params[:page], per_page: 10)

  
  end

  def search
    @orderkey = params[:orderkey]
    if @orderkey == nil
      @orderkey = "mgmtno"
    end

    if params[:store_id] == 0 || params[:store_id] == nil
      @sel_storename = "ALL"
      @itassets = Itasset.all.order(@orderkey).paginate(page: params[:page], per_page: 10)
    else
      @sel_storename = Store.find(params[:store_id]).storename
      @itassets = Itasset.where(store_id: params[:store_id]).order(@orderkey).\
                  paginate(page: params[:page], per_page: 10)
    end
  end
  # GET /itassets/1
  # GET /itassets/1.json
  def show
  end

  # GET /itassets/new
  def new
    @itasset = Itasset.new
    @itasset.store_id = params[:store_id]
    @itasset.dtype_id = 99
    @dtypes = Dtype.all 
    @stores = Store.all
  end

  def newss
    @itasset = Itasset.new
    @itasset.store_id = params[:store_id]
    @itasset.dtype_id = 99
    @dtypes = Dtype.all
  end 
   
  # GET /itassets/1/edit
  def edit
    @dtypes = Dtype.all
  end

  # POST /itassets
  # POST /itassets.json
  def create
    @dtypes = Dtype.all
    @itasset = Itasset.new(itasset_params)

    respond_to do |format|
      
      if @itasset.save
        format.html { redirect_to @itasset, notice: 'Itasset was successfully created.' }
        format.json { render :show, status: :created, location: @itasset }
      else
        format.html { render :new }
        format.json { render json: @itasset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itassets/1
  # PATCH/PUT /itassets/1.json
  def update
    respond_to do |format|
      if @itasset.update(itasset_params)
        format.html { redirect_to @itasset, notice: 'Itasset was successfully updated.' }
        format.json { render :show, status: :ok, location: @itasset }
      else
        format.html { render :edit }
        format.json { render json: @itasset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itassets/1
  # DELETE /itassets/1.json
  def destroy
    @itasset.destroy
    respond_to do |format|
       format.html { redirect_to itassets_url, notice: 'Itasset was successfully destroyed.' }
       format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itasset
      @itasset = Itasset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itasset_params
      params.require(:itasset).permit(:mgmtno, :store_id, :username, :placetouse, :devicetype, :purpose, :manufacture, :modelno, :serialno, :cpuspeed, :ramsize, :disksize, :os, :hostname, :ipaddr, :gwaddr, :macwire, :macwireless, :date_purchase, :date_produce, :amtpurchase, :remarks, :dtype_id, )
    end
end