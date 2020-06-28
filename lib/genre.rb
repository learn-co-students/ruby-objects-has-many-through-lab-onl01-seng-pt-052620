class Genre

    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
        save
    end

    def songs
        Song.all.select do |song| 
            song.genre == self
        end
    end

    def artists
        Song.all.map do |song| 
            song.artist
        end
    end

    def save
        @@all << self
    end 
    
end