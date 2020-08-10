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

    def my_cults_slogans
        cults.map {|cult| cult.slogan}
    end

    def self.most_active
        all.max_by {|cultist| cultist.cults.count }
    end

    def self.top_three
        all.max_by(3) {|cultist| cultist.cults.count }
    end

    
end