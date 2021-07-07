class Ingredient
    @@all = []

    def Ingredient.all
        @@all
    end

    def initialize
        @@all << self
    end

    def Ingredient.most_common_allergen
        all_user_allergies = {}
        max = 0
        User.all.each do |user|
            count = 0
            user.allergies.each do |allergy|
                all_user_allergies[allergy] = count += 1
            end
        end
        all_user_allergies.each do |allergy, num|
            if num > max
                max = num
            end
        end
        all_user_allergies.key(max)
    end
end