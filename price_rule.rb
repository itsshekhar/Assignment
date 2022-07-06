class Pricing_rule 
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
 
    def total_amount (products ,cart)
        cart.each{ |item| @sum+=products[item][1]}
        discount(cart)
    end
end