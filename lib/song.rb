# require 'pry'

class Song
## artist accessor added because the song belongs to the artist 
    attr_accessor :name, :artist

 ## this is to keep track of all the songs initialized 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

## this is to output all the songs in @@all 
    def self.all 
        @@all 
    end 

    def artist_name 
        if !artist
            return nil 
        end 
        artist.name 
    end 

end 