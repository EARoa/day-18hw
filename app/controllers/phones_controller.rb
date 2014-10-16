class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]

  # GET /phones
  # GET /phones.json
  def index
    @phones = Phone.all
  end

  # GET /phones/1
  # GET /phones/1.json
  def show
  end

  # GET /phones/new
  def new
    @phone = Phone.new
  end

  # GET /phones/1/edit
  def edit
  end

  # POST /phones
  # POST /phones.json
  def create
    @phone = Phone.new(phone_params)

    respond_to do |format|
      if @phone.save
        format.html { redirect_to @phone, notice: 'Phone was successfully created.' }
        format.json { render :show, status: :created, location: @phone }
      else
        format.html { render :new }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phones/1
  # PATCH/PUT /phones/1.json
  def update
    respond_to do |format|
      if @phone.update(phone_params)
        format.html { redirect_to @phone, notice: 'Phone was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone }
      else
        format.html { render :edit }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phones/1
  # DELETE /phones/1.json
  def destroy
    @phone.destroy
    respond_to do |format|
      format.html { redirect_to phones_url, notice: 'Phone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_params
      params.require(:phone).permit(:name, :brand, :photo_url, :price, :instock)
    end
end





# class PhonesController < ApplicationController
#
#   def index
#     @phones = Phone.all
#   end
#
#   def show
#     @phones = Phone.find(params[:id])
#   end
#
#   def new
#     @phones = Phone.new(instock: true)
#   end
#
#   def create
#     @phones = Phone.new(phone_params)
#     if @phones.save
#       redirect_to phone_path, notice: "New Phone Added"
#     else
#       render :new
#     end
#   end
#
#   def edit
#     @phones = Phone.find(params[:id])
#   end
#
#   def update
#     @phones = Phone.find(params[:id])
#     if @phones.update(phones_params)
#       redirect_to @phones, notice: "Phone Saved"
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @phones = Phone.find(params[:id])
#     @phones.destroy
#     redirect_to phone_path, notice: "Phone Removed"
#   end
#
#   def phone_params
#
# params.require(:phone).permit(:name, :brand, :photo_url, :price, :instock)
#     end
# end
