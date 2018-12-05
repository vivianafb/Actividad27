class ProductsController < ApplicationController

    def create
        @product = Product.new(product_params)
        @product.save
        @category = @product.category
        redirect_to @category
    end

    def destroy
        @product.destroy
        redirect_to @product.category
    end
    
    def product_params
        params.require(:product).permit(:name, :price, :category_id)
      end

end
