class Genre  
    attr_accessor :name  

    @@all = []  
    def initialize(name)
        @name = name
        @@all << self  
    end 

    def self.all
        @@all  
    end 

    def songs
        Song.all.select do |song|
        song.genre == self 
        end 
        #songs with this genre  
    end 

    def artists
        songs.map do |song|
        song.artist
        end 
        #collect artists  
    end 


end 