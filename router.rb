class Router
    def initialize(controller)
        @controller = controller
    end

    def run
        puts "--- Welcome!!! ---"
        loop do
            display_options
            action = gets.chomp.to_i
            case action
            when 1 then @controller.list
            when 2 then @controller.create
            when 3 then @controller.destroy
            when 4 then break
            else
                puts "Wrong input dummy!"
            end
        end
    end

    def display_options
        puts ""
        puts "1 : Display list"
        puts "2 : Add a recipe"
        puts "3 : Remove recipe"
        puts "4 : Exit"  
        puts "Your choice please?"
    end
end