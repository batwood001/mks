class Cookbook
	def initialize(style)
		@style = style
	end
end

class Recipe
	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end





mex_cuisine = Cookbook.new("Mexican Cooking")

burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])