class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all 
        @@all
    end

    def followers
        cult = Bloodoath.all.select do |oath| 
            oath.cult == self
        end
        cult.map {|cult| cult.follower}
    end

    def recruit_follower follower, initiation_date 
        Bloodoath.new self, follower, initiation_date
    end

    def cult_population
        Bloodoath.all.select {|oath| oath.cult == self}.length
    end

    def self.find_by_name name
        all.find {|cult| cult.name == name}
    end

    def self.find_by_location location
        all.find {|cult| cult.location == location}
    end

    def self.find_by_founding_year founding_year
        all.find {|cult| cult.founding_year == founding_year}
    end

    def average_age 
        ages = followers.map(&:age)
        ages.reduce(:+).to_f / followers.length
    end

    def my_followers_mottos
        followers.map do |follower|
            follower.life_motto
        end
    end

    def self.least_popular
        all.min_by {|cult| cult.cult_population}
    end

    def self.most_common_location
        locations = all.map {|cult| cult.location}
        highest_count = 0
        popular_location = ''
        locations.each do |location|
            if locations.count(location) > highest_count
                highest_count = locations.count(location)
                popular_location = location
            end
        end
        popular_location 
    end

    # def self.most_common_location       
    #     locations = all.map do |cult|          
    #         cult.location
    #     end
    #     locations.max_by {|i| locations.count(i)}
    # end


end
