class Ingredient
    attr_accessor :type, :stock, :daily

    def amount_needed
        @daily * 7 - @stock
    end

    inventory = []

    while user_input = gets.strip

    end

    def info
        puts "'1' to add an ingredient.
        '2' to print out shopping list. 
        '3' to exit."
    end

    info

    while user_input = gets.strip

        case user_input
            when "1"
                add_new_ingredient inventory
            when "2"
                shopping_list inventory
            when "3"
                break
        end
    end
        info

end