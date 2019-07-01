class Ingredient
    attr_accessor :recipe, :allergy, :allergy_count

    @@all = []

    def initialize 
        @@all << self
        @allergy_count = 0
    end

    def Ingredient.all 
        @@all 
    end

    def Ingredient.most_common_allergen 
        most_common = nil
        @@all.each do |ingredient| 
            if most_common == nil || ingredient.allergy_count > most_common.allergy_count
            most_common = ingredient
            end
        end
        return most_common
    end


end
