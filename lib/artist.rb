class Artist
  
  attr_accessor :name
  
  @@song_count = 0
 
  def initialize(name)
    @name = name
    @songs = []
  end

   def songs
    @songs
    Song.all.select {|song| song.artist == self}
   end

   def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

   def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

   def self.song_count
    @@song_count += 1
  end

 end
=======
class Author
  attr_accessor :name

   @@post_count = 0

   def initialize(name)
    @name = name
    @posts = []
  end

   def posts
    @posts
  end

   def self.post_count
    @@post_count
  end

   def add_post(post_title)
    @posts << post_title
    post_title.author = self
    @@post_count += 1
  end

   def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
end 
>>>>>>> 88e7c80a9f20eb5ead93195aa6ca9d33b03872fc
