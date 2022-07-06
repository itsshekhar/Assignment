class Product
    attr_reader :product
    def initialize()
        @product=Hash.new(nil)
    end
    def add_product(code,name , price)
       
        @product[code]=[name,price.to_f]
    end
    def remove_product_with_code(code)
        @product.delete(code)
    end
end


