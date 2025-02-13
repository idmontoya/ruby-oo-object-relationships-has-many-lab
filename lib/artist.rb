require "pry"
class Artist
    attr_accessor :name, :song

    def initialize(name)
        @name = name
    end
     
    def songs
        Song.all.select do |song|
            song.artist == self 
        end  
    end

    def add_song(song)
        #binding.pry
        song.artist = self
        #binding.pry
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end