class RecipeCard
    attr_accessor :user
    attr_reader :date, :rating, :recipe

    @@all = []

    def RecipeCard.all
        @@all
    end

    def initialize(recipe, date, rating)
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end
end