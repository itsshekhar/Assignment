require "./price_rule.rb"
require "./product.rb"
require "./cart.rb"


class CheckOut 
    attr_reader :cart
    def initialize
        @cart=Cart.new
    end
    def user_input(products)
        
        diplay_instruction()

        looping=true
        while(looping)do
            
            input=gets.chomp.to_s
            
            if  products[input]!=nil
                    @cart.scan(input)
                    puts "Enter another product code"
                
            elsif input=="N"|| input =="n"
                    looping=false
            elsif
                puts "Enter valid code"
                
            end
        end
        
    end
    
    def diplay_instruction()
        puts "\n 001 | Travel Card Holder | $9.25
        002 | Personalised cufflinks | $45.00
        003 | Kids T-shirt | $19.95"

        puts "\n press 'N/n' for end the basket filling"

        puts "\n ADD TO BASKET"

        puts "Enter product code"
    end

    def total(products)
        pricing = Pricing_rule.new
        pricing.total_amount(products,@cart.basket)
    end
end


company_products=Product.new()
company_products.add_product("001" ,"Travel Card Holder" ,9.25)
company_products.add_product("002" ,"Personalised cufflinks" ,45.00)
company_products.add_product("003" ,"Kids T-shirt" ,19.95)

checking_items = CheckOut.new()
checking_items.user_input(company_products.product)
puts "$#{checking_items.total(company_products.product)}"

