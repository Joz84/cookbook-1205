require_relative "router"
require_relative "controller"
require_relative "cookbook"

csv_file = "recipes.csv"
cookbook = Cookbook.new(csv_file)
controller = Controller.new(cookbook)
router = Router.new(controller)

router.run