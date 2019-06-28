class RecipeIngredient

    attr_accessor :recipe, :ingredient

    @@all = []

    def initialize(recipe,ingredient)
        @recipe = recipe
        @ingredient = ingredient

        @@all << self
    end

    def all
        @@all
    end

    def recipe
        @recipe
    end

    def ingredient
        @ingredient
    end

end