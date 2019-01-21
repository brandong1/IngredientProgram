class Ingredient
    #Define the attr_accessor attributes for type of ingredient, amount in stock, and daily consumption.
	attr_accessor :type, :stock, :daily
    
    #Define an instance method in the class for calculating how much is needed for the next seven days.
    def amount_needed 
		@daily * 7 - @stock
	end
#test
end

#Define an array that will hold an ingredient in each slot.
    inventory = []
    
    #Define a method for adding an ingredient to the inventory. Be sure to prompt the user and record their input for type, stock, and daily use.
    def add_new_ingredient inventory
        new_ingredient = Ingredient.new
        puts "Type of ingredient"
        new_ingredient.type = gets.strip
        puts "Current Stock"
        new_ingredient.stock = gets.to_i
        puts "Daily Amount Required"
        new_ingredient.daily = gets.to_i
        inventory[inventory.size] = new_ingredient
    end

    #Define a method for printing out the shopping needs for the next week.
    def shopping_list inventory
        inventory.each do |ingredient|
            puts "#{ingredient.type} \t\t\t #{ingredient.amount_needed}"
        end
    end

    def info
        puts "'1' to add an ingredient. '2' to print out shopping list '3' to exit"
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
	info