class ProductController < ApplicationController
  def new
    @product = Product.new 
  end
def create
  @product = Product.new(product_params)

  respond_to do |format|
    if @product.save
     
      if params[:names]
        #===== The magic is here ;)
        params[:names].each { |image|
          @product.pictures.create(image: image)
        }
      end

      format.html { redirect_to @product, notice: 'product was successfully created.' }
      format.json { render json: @product, status: :created, location: @product }
    else
      format.html { render action: "new" }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end
  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name,:description,pics: [:name])
    end

end
