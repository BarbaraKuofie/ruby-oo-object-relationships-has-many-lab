require 'pry'

## the request was if this variable is called, there needs to be the total count of songs
## songs are created either by name or by artist. tally up those creations 

class Artist

    attr_accessor :name

    def initialize(name)
      @name = name
    end

## the request was this artist has many songs. 
## here, we isolate all the songs the artist has. 
    def songs
      Song.all
    end

    
    def add_song(song)
        song.artist = self 
      end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    
    end 

    ## goal is to count how many songs the artist owns. 
    ## this means every time a song is created it should be added. 
    ## songs are created either by name or by artist. so add those creations to count 
    def self.song_count
      Song.all.count
    end 
  end