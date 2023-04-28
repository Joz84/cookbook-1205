require_relative "view"
require_relative "recipe"

class Controller
    def initialize(cookbook)
        @cookbook = cookbook
        @view = View.new
    end

    def list
        # Demander à cookbook la liste de recipes et la stocker dans une variable
        recipes = @cookbook.all
        # Demander à view afficher la liste des recipes
        @view.display_recipes(recipes)
    end

    def create
        # Demander à view le nom et le stocker dans une variable
        name = @view.ask("Name?")
        # Demander à view la description et le stocker dans une variable 
        description = @view.ask("Description?")
        # Demander à Recipe de créer une instance de recipe
        recipe = Recipe.new(name, description)
        # Demander à cookbook de l'ajouter aux tableau
        @cookbook.add(recipe)
    end

    def destroy
        # Demander a la vue de demander l'index et le stocker dans une variable
        index = @view.ask_index
        # Demander à cookbook de remove la recipe à cette index
        @cookbook.remove(index)
    end

end