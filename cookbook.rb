require "csv.rb"
require_relative "recipe"

class Cookbook
    def initialize(csv_file)
        @csv_file = csv_file
        @recipes = []
        load_csv
    end

    # Create
    def add(recipe)
        @recipes << recipe
        write_csv
    end

    # Read
    def all
        @recipes
    end

    # Update

    # Delete
    def remove(index)
        @recipes.delete_at(index)
        write_csv
    end

    private

    def load_csv
        CSV.foreach(@csv_file, headers: :first_row) do |row|
            @recipes << Recipe.new(row["name"], row["description"])
        end
    end

    def write_csv
        CSV.open(@csv_file, "wb") do |csv|
            csv << ["name", "description"]
            @recipes.each do |recipe|
                csv << [recipe.name, recipe.description]
            end
        end
    end
end