class Post
 
  attr_accessor :author, :title 
  
  @@all = []

   def initialize(title)
    @title = title
    @author = author
    @@all << self
   end

   def author_name
    if self.author 
      self.author.name 
    else
      nil
    end
   end

   def self.all
    @@all

class Post
  attr_accessor :author, :title

   def initialize(title)
    @title = title
  end

   def author_name
    self.author? self.author.name : nil
  end
end 