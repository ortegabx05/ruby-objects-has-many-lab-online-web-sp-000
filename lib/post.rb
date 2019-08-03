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
    @@all << self
  end
