class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize name, age, life_motto
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all 
        @@all
    end

    def cults
        cultist = Bloodoath.all.select do |oath|
            oath.follower == self
        end
        cultist.map {|follower| follower.cult}
    end

    def join_cult cult, initiation_date
        Bloodoath.new cult, self, initiation_date
    end

    def self.of_a_certain_age age
        all.select {|follower| follower.age >= age}
    end

    
end