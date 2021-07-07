class Allergy
    @@all = []

    def Allergy.all
        @@all
    end

    def initialize(user, ingredient)
        user.allergies << ingredient
        @@all << self
    end
end