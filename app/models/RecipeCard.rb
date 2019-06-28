class RecipeCard

    attr_accessor :user, :recipe

    @@all = []

    def initialize(user,recipe)
        @user = user
        @recipe = recipe

        @@all << self
    end

    def all
        @@all
    end
end