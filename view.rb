class View
    def display_recipes(recipes)
        puts "############### Your recipes ###############"
        recipes.each_with_index do |recipe, index|
            puts "#{index + 1} - #{recipe.name} : #{recipe.description}"
        end
        puts "############################################"
    end

    def ask(question)
        puts question
        print "> "
        gets.chomp
    end

    def ask_index
        puts "Index?"
        print "> "
        gets.chomp.to_i - 1
    end
end