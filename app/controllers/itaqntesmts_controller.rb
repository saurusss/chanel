class ItaqntesmtsController < ApplicationController
  before_action :set_itaqntesmt, only: [:show, :edit, :update, :destroy]

  # GET /itaqntesmts
  # GET /itaqntesmts.json

  def index
    if  params[:storename] == nil 
      @sel_storename = nil
      @sel_stores = nil
      @itaqntesmts = Itaqntesmt.all.order("store_id, dtype_id")
    else
      @sel_storename = params[:storename]
      @sel_stores = Store.select(:id).where("storename like ?", "%#{params[:storename]}%").order("id")
      @sel_st_ar = [] 
      @sel_stores.each do |s|
            @sel_st_ar.push(s.id)
        end 
      @itaqntesmts = Itaqntesmt.where(store_id: @sel_st_ar).order("store_id, dtype_id")         
    end
  end 

  
  # GET /itaqntesmts/1
  # GET /itaqntesmts/1.json
  def show    
  end

  # GET /itaqntesmts/new
  def new
    @itaqntesmt = Itaqntesmt.new
    @sel_store_id = params[:store_id]
    @sel_dtype_id = params[:dtype_id]
    @itaqntesmt.store_id = params[:store_id]
    @itaqntesmt.dtype_id = params[:dtype_id]
    @dtypes = Dtype.all.order("priority")
  end

  # GET /itaqntesmts/1/edit
  def edit
     @dtypes = Dtype.all
  end

  # POST /itaqntesmts
  # POST /itaqntesmts.json
  def create
    @dtypes = Dtype.all
    @itaqntesmt = Itaqntesmt.new(itaqntesmt_params)

    respond_to do |format|
      if Itaqntesmt.where(store_id: @itaqntesmt.store_id).where(dtype_id: @itaqntesmt.dtype_id).count > 0 # 19-12-13
        format.html { redirect_to "/itassets/itaps/#{@itaqntesmt.store_id}", notice: '!! 이미 등록된 장비타입 입니다.***** 이미 등록된 장비타입 입니다.!!!!!!' }                                                                       # 19-12-13
        format.json { render json: @itaqntesmt.errors, status: :unprocessable_entity }                    # 19-12-13
      else                                                                                                # 19-12-13
        if @itaqntesmt.save
          format.html { redirect_to @itaqntesmt, notice: 'Itaqntesmt was successfully created.' }
          format.json { render :show, status: :created, location: @itaqntesmt }
        else
          format.html { render :new }
          format.json { render json: @itaqntesmt.errors, status: :unprocessable_entity }
        end
      end                                                                                                 # 19-12-13
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
