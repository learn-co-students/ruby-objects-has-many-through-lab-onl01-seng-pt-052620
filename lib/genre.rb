class Genre
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artists
        songs.collect do |song|
            song.artist
        end
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def self.all
        @@all
    end

end