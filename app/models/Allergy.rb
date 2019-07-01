class Allergy 
    attr_accessor :user, :ingredient 
    @@all = []
    def initialize(ingred)
        @ingredient = ingred
        @@all << self
    end

    def Allergy.all
    @@all
    end


end