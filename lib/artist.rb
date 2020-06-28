class Artist
    attr_accessor :name
    attr_reader :songs, :genre
        @@all = []
        

        def self.all
            @@all
        end

    def initialize(name)
        @name = name 
        @genre = genre
        @songs = songs
        @@all << self   
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
       song = Song.new(name, self, genre)
       self.songs.last

    end

    def genres

        Song.all.map do |song|
            song.genre 
        end
    end

end
