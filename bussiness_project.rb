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




class Cart 
    attr_accessor :basket , :count_items
    def initialize()
        @basket=Array.new
        @count_items=0
    end

    def scan(item)
        @basket.append(item)
        @count_items=@count_items+1
        
    end

    def remove(item)
        if count_items!=0
        @basker.remove(item)
        @count_items=@count_items-1
        else
            "bucket empty"
        end
    end

    def user_input(products)
        diplay_instruction()

        looping=true
        while(looping)do
            
            input=gets.chomp.to_s
            
            if  products[input]!=nil
                    scan(input)
                    puts "Enter another product code"
                
            elsif input=="N"|| input =="n"
                    looping=false
            elsif
                puts "Enter valid code"
                
            end
        end
        @basket
    end
    
    def diplay_instruction()
        puts "001 | Travel Card Holder | $9.25
        002 | Personalised cufflinks | $45.00
        003 | Kids T-shirt | $19.95"

        puts "\n press 'N/n' for end the basket filling"

        puts "\n ADD TO BASKET"

        puts "Enter product code"
    end
end







class Pricing 
    attr_reader :sum
    def initialize
        @sum=0
    end
    def discount (user_basket)
        if user_basket.count("001")>=2
            @sum-=0.75*user_basket.count("001")
        end
        if @sum>60
            @sum*=0.9
        end
        @sum.round(2)
        
    end
 
    def total (products ,cart)
        cart.each{ |item| @sum+=products[item][1]}
        discount(cart)
    end
end






company_products=Product.new()
company_products.add_product("001" ,"Travel Card Holder" ,9.25)
company_products.add_product("002" ,"Personalised cufflinks" ,45.00)
company_products.add_product("003" ,"Kids T-shirt" ,19.95)



user_basket=Cart.new
user_basket_content=user_basket.user_input(company_products.product)

cost=Pricing.new
price=cost.total(company_products.product, user_basket_content)
puts price
