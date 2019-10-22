class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select{|song|song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end
  
  def self.song_count
    count = 0
    Song.all.each{|n| count += 1 if n.artist != nil}
    count
  end
  
end