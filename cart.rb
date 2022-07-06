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
end