#keep track of the songs that belong to an Artist
#create song instances and add artist to each song with add song
class Artist
  attr_reader :name , :songs
  @@song_count = 0

  def self.song_count
    @@song_count
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    song.artist = self #adds this artist to define artist
    @songs << song
    @@song_count += 1
  end
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end
end
