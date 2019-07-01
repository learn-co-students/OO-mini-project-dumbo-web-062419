class RecipeIngredient
    attr_accessor :recipe, :ingredient
    @@all = []

    def initialize(recipe, ingredient)
        @recipe = recipe 
        @ingredient = ingredient
        @@all << self
    end
    

    def RecipeIngredient.all 
        @@all
    end



end