class User

    @@all = []

    def initialize
        @@all << self
    end

    def all
        @@all
    end

end